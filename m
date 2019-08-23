Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AF89A5A9
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 04:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S+utGBqPo8T0HJin/WKt19DYADqyAgHAv8QuZbWdyeU=; b=IeH3eZy1RDpTCaI1wqewC1HGS
	0zcoJasMJylvVwChzVeJ//2zGtUjauFwar+6YwsznN+rKRGOWGncvrUXan5UDgg4hj2kWdVJo8OLB
	/YNF/9rpWrYFYPRj0z2ed8sp7VGFGj7YEoSnHAVfzkqDRiLvPHusQxDXzF9CuRMsZzznrXjHAgeS+
	/XG9cjVF7TuImf6UBV+7SKfkGN7oQbvKy8fZpamR3WM0ycCYIg+yCt2Bid3EsCMcdadmaKpTwUtO6
	+npaeKNgrW8u5WQURaUcWvPoqG2cK9bAg6t+gznXsM/3qrdNp73ojwB/T+2Y5QB5qmdl3EvQ9/i7g
	0ZZWigZrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0zVa-0002sT-DA; Fri, 23 Aug 2019 02:40:58 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0zVP-0002s4-2j
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 02:40:48 +0000
Received: by mail-pf1-f196.google.com with SMTP id 196so5377160pfz.8
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 19:40:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xLHWwUnbiQhaAdmdPJE6KhJq37170RmEY6hiI/g9bUM=;
 b=B9wShrtZohMIyvO7dJSjoCYXugcNCEPKCuHvPCb6OgZ8Bo6GSenve7/wnXFQaVVsoK
 JKJ2Sq1Qz3+cZ3LlYZUApfFevFELIz/xr/leSK2QLwChJ4ZTqQhkvtSzXzV9rcQQX4Hh
 PELVFT4G6bNnHp6T0B3POevoidj6GwOvRiQDZUSL40Dex8T09VRu0HxNWQsHdzJbDVkn
 U39aoA4VP8XysbRGTgkNCQsHxzJ0Lc0H3qu1oUNjHI9LvspLP181ZRDC6sr3Tgw9lZbA
 GClWlsz9/74mZZT9iBxh710AhhWmUOGIia1VvLvNu8d9vZp7J5PT6zd0BF+PVTWSwcDt
 tWaQ==
X-Gm-Message-State: APjAAAWGCcmvAsUedn74CVoGROqTKFEe/ZDjhY+IY1JieF3sFM8uHBbt
 4djZrKEqJoImE3oad1YaWhK+ME4s
X-Google-Smtp-Source: APXvYqyENoQQQvR9m1yHZfP8VUXOKGi95vSsljKhSgrotAO6caisK+ZMEdvouK1F/+A32IzvJ1a0KA==
X-Received: by 2002:a62:1ad4:: with SMTP id a203mr2530182pfa.210.1566528045131; 
 Thu, 22 Aug 2019 19:40:45 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:a183:2905:6842:b7c?
 ([2601:647:4800:973f:a183:2905:6842:b7c])
 by smtp.gmail.com with ESMTPSA id e129sm848182pfa.92.2019.08.22.19.40.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 19:40:44 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
To: Christoph Hellwig <hch@lst.de>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
 <20190822000939.GG9511@lst.de>
 <acaf9334-3c5c-8f25-d436-0c87e94a6064@grimberg.me>
 <20190822003549.GH10391@lst.de>
 <43b9eeab-9e5b-e5c3-235f-d2d050886d28@grimberg.me>
 <bf77e846-b319-0d6e-ece6-812257f33d57@suse.de>
 <877e75b2j5.fsf@solarflare.com> <20190823000106.GA2386@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <9c73f6e1-4801-73c9-a75e-5a124edd6481@grimberg.me>
Date: Thu, 22 Aug 2019 19:40:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190823000106.GA2386@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_194047_121042_9D07785E 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> +static inline void nvme_trace_bio_complete(struct request *req,
>> +					   blk_status_t status)
>> +{
>> +	struct nvme_ns *ns = req->q->queuedata;
>> +
>> +	if (req->bio && req->cmd_flags & REQ_NVME_MPATH)
>> +		trace_block_bio_complete(ns->head->disk->queue,
>> +					 req->bio, status);
>> +}
> 
> I think req->bio must be true for REQ_NVME_MPATH.  Otherwise this is
> exactly what I'd like to see.

Agree, cmd_flags are set from the bio->bi_opf which the mpath stack
device is setting, so for sure there is a bio.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
