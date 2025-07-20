{% extends "base.tpl" %}

{% block content %}
<div id="container">

    <h1 id="page-title">Chapter Select!</h1>
    <meta name="viewport" content="width=device-width, initial-scale=1">

   <div id="chapter-select-container">
  <label for="chapter-select">Jump to Chapter:</label>
  <select id="chapter-select" onchange="scrollToChapter(this.value)">
    {% for name in storylines.keys() %}
      <option value="{{ name | replace(' ', '-') }}">{{ name }}</option>
    {% endfor %}
  </select>
</div>

    {%- if storylines -%}
        <div id="blurb">
        {%- if use_thumbnails %}
            {%- for name, pages in storylines.items() %}
            {%- if pages %}
            {%- if storylines.keys() | list != ["Uncategorized"] %}
                <a id="{{ name | replace(' ', '-') }}"></a>
                <h2 class="archive-section" id="archive-section-{{ name | replace(' ', '-') }}">{{ name }}</h2>
            {%- endif %}
            <div class="archive-grid">
                {%- for page in pages %}
                    <a href="{{ comic_base_dir }}/comic/{{ page.page_name }}/">
                    <div class="archive-thumbnail">
                        <div class="archive-thumbnail-page">
                            <img src="{{ base_dir }}/{{ page.thumbnail_path }}">
                        </div>
                        <div class="archive-thumbnail-title">{{ page.page_title }}</div>
                        <div class="archive-thumbnail-post-date">{{ page.archive_post_date }}</div>
                    </div>
                    </a>
                {%- endfor %}
            </div>
            {%- endif %}
            {%- endfor %}
        {%- else %}
            <ul>
            {%- for name, pages in storylines.items() %}
                {%- if pages %}
                    {%- if storylines.keys() | list != ["Uncategorized"] %}
                    <li><a id="{{ name | replace(' ', '-') }}"></a>{{ name }}
                    <ul>
                    {%- endif %}
                    {%- for page in pages %}
                        <li>
                            <a href="{{ comic_base_dir }}/comic/{{ page.page_name }}/">{{ page.page_title }}</a> -- {{ page.post_date }}
                        </li>
                    {%- endfor %}
                    {%- if storylines.keys() | list != ["Uncategorized"] %}
                    </ul>
                    {%- endif %}
                    </li>
                {%- endif %}
            {%- endfor %}
            </ul>
        {%- endif %}
    {%- else %}
        <h3>No comics have been published yet.</h3>
    {%- endif %}
</div>

{# Smooth Scroll Script #}
<script>
function scrollToChapter(chapterId) {
    const section = document.getElementById('archive-section-' + chapterId);
    if (section) {
        section.scrollIntoView({ behavior: 'smooth' });
    }
}
</script>
{% endblock %}