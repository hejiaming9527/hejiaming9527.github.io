---
layout: portfolio
title: 时间线
permalink: /timeline/
icon: fas fa-clock
order: 6
---

<section class="timeline-page">
  <div class="section-heading"><p><span>01</span> PROJECT LOG</p><h1>项目时间线</h1><div></div></div>
  <p class="section-note">按天记录项目迭代、博客维护与工作方法沉淀。每条动态都链接到对应的项目或文章页面。</p>
  <div class="social-timeline">
    {% for item in site.data.timeline %}
    <article class="social-update-card">
      <div class="social-update-avatar" aria-hidden="true">HJ</div>
      <div class="social-update-body">
        <header class="social-update-header">
          <strong>何嘉明</strong><span>@hejiaming9527</span>
          <time datetime="{{ item.date }}">{{ item.date | date: "%Y.%m.%d" }}</time>
        </header>
        <div class="social-update-type">{{ item.type }}</div>
        <h2><a href="{{ item.url | relative_url }}">{{ item.title }}</a></h2>
        <p>{{ item.detail }}</p>
        <footer><a href="{{ item.url | relative_url }}">查看关联页面 →</a><span>{{ item.scope }}</span></footer>
      </div>
    </article>
    {% endfor %}
  </div>
</section>