Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2412963F21
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jul 2019 04:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xumUlIhIj3YZhNadFzITBZM3QV/xfZ7IszY+ITEYZxc=; b=acRH9Spzx4X9PtGNCbtI63N8L
	VrBtV3Y1lS9kzLFfLoLJbJakCRW/4zdm9MreB7vlXeDgGb9gHPcbyQDBCN47BzdlJRgj2Z70FOrpq
	VxN34Xv804ZUxxMYRGlF/ZLm/YBsP7W8jfYfzoDpLV3FC71IOCw0S1NPdjl07SLGkGcfONkNprdll
	QemMVq/QemTzULXc0hLsZ6DgVJs4E0qUZ1AMzJ5nATyoBlWsZ1xMghiyHPO97GwRwi+PLVArsgSjA
	TLPvu0y8x+jPE9yHdvePGUGBvcQ0J7h1FJ+Ni4lMWk/bqutNjbxZPN9JFkib8Vx5TmCRzdTD66xEo
	2YUDyIpxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl27B-0002NN-Aw; Wed, 10 Jul 2019 02:13:49 +0000
Received: from mail-wr1-f51.google.com ([209.85.221.51])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl274-0002Mm-Nd
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 02:13:44 +0000
Received: by mail-wr1-f51.google.com with SMTP id a10so752400wrp.9
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 19:13:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ic4EF9VJnToShTrvpmK9wlTk1eXwqQ3x5eQW3syZJZM=;
 b=YuYR1fM/PWzhbouTc3Po461u3yWVcOWRnMYuJRo0fd/sEfTqKnd+Y+y3atLDjjqvBq
 hKwTeRBw1xaVo7A2fO1yKHm1PtMvB8ufnjLD4mZVX3WP6rxsG/jJEsXOUZUjpUYldQ+c
 SaDehFOjsEyO1zloYSKzZcSgBrmE7RzXVrp1HXk+3f4tjJ7IojGhoWS6ELCDWtRlgSLD
 ZsvjbnD/SBOkWn+9gKzsfhiFvuuG3Knr0wQjx0MDnvrud1ehufgaIP90rjl20C5ihaTE
 izLeufiQFYkHWj+d2/1s5ec5Sj9FQROIb6Uk7A+a+8cOgWp6MiXbXImgsNV96PEZsy+m
 gxwA==
X-Gm-Message-State: APjAAAXT/0pKzKlDoDppUlDNMqHGO4QG3Uf0mrOfkEarABoTwYqTSxbU
 XeGuPc7NcN90UpYFIONQI4qd5Rlm
X-Google-Smtp-Source: APXvYqxzhI73/QlwDrNA1XTlv8mh+D9xJFnvQgLhynjqRkwUIh0ksZhdd3tmqitatdrYc5E1qB3F/w==
X-Received: by 2002:a5d:6205:: with SMTP id y5mr26768174wru.314.1562724820406; 
 Tue, 09 Jul 2019 19:13:40 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id h19sm1737740wrb.81.2019.07.09.19.13.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 19:13:39 -0700 (PDT)
Subject: Re: Should hot removed devices close open namespace bd references?
To: "Derrick, Jonathan" <jonathan.derrick@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <d7027ad47e28339f13eb2d7f1bff4c7749da1160.camel@intel.com>
 <32a2e339-b948-43fe-72a3-77eb2e626c63@grimberg.me>
 <4eddc7d98f49abf4255c31fbe4412ce9e3877c06.camel@intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ed33a95f-1202-a5aa-c0ec-c91a8810a082@grimberg.me>
Date: Tue, 9 Jul 2019 19:13:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <4eddc7d98f49abf4255c31fbe4412ce9e3877c06.camel@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_191342_770732_6E2E645F 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Its the controller that is not released (as the open ns handle holds
>> a reference to it). But what is the old controller state? the code
>> is supposed to allow this check if the old controller is in
>> DELETING/DEAD.
> The state is 6 (DEAD). I added some sysfs code to show the controller
> state:
> 

I think I understand the problem, can you try with:
--
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e28717d11f9a..04d5ce1a42c1 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2419,8 +2419,8 @@ static bool nvme_validate_cntlid(struct 
nvme_subsystem *subsys,
         lockdep_assert_held(&nvme_subsystems_lock);

         list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
-               if (ctrl->state == NVME_CTRL_DELETING ||
-                   ctrl->state == NVME_CTRL_DEAD)
+               if (tmp->state == NVME_CTRL_DELETING ||
+                   tmp->state == NVME_CTRL_DEAD)
                         continue;

                 if (tmp->cntlid == ctrl->cntlid) {
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
