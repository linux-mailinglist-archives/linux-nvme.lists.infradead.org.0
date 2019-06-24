Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D4051BAC
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 21:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v2DoFRac7vWYyL/bq75SqsslPj4OhM3q+YyDw2eTh6k=; b=fYw84OdLgKkrDfrip/hJXcTtl
	3cElbQfsC1aVhVddTigpncxd2bX36yfL690UoVTux7Fd5WFetUIi5nSlIv5qE8XkyyDK3QSkMj7+R
	vQ+zgPJ2X6tKo3Q1il3/g+NSgEeaDSQg+t7pSsAB+Sw/Fd95ENhU9tke7TqxNtLSbM3pXu1ew1JyD
	SZZStqHHtaWRhbtFY6JTATcYNg9Jdz7gvoFisdYC2R0Rx33yhGzHLt9wlHcNB3diVxU7jp5JuAbSY
	tDOZIo5ix5aPx3j1+eQ85lN5VU6AqHQdADdhLV2cnlPS3ci6M6JxQJzluKb+7X1TmcQut6vLOT8Zi
	6BD7ZZIEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfUy2-0005Et-MX; Mon, 24 Jun 2019 19:49:30 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfUxw-0005Dl-H5
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 19:49:25 +0000
Received: by mail-pf1-f193.google.com with SMTP id j2so8111726pfe.6
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 12:49:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7bsGhVc0BJsD5HDe2On9HrEiVaRKAmu8WGd4RPY3jcY=;
 b=jSDecUHur810IDMLZaLap56Dt4/Igt047Wwfcr20Ad7OLWb458HmXW5BqaA2nPoNKa
 hEgLW1ZF07SS9nhDmgKRg1YNhhKeReQWvAS2CXvvzaC7MEptDt09ENzMa5F03/Q1C9CQ
 t5xRCd7DeUQzBdiWB58tEUxV4/JkxoQfAGUL9jfj6dfThQ1yCsEm1IEn/jHvPzsQeCrL
 IsA1/7dLsLEciqFCQajv15mr9y9A9lirqWHsVnyf45SNyzVK7nyWObtyozh9r+LapQHS
 7nzlvnvDeVnnVGOsjyVdW/91vk5h1L7u1McSb2R4nr+bpcQArIS1+9xbBzDQSepsSusw
 9BnQ==
X-Gm-Message-State: APjAAAUW9mcABrkVPrdHRdl9yvsKsYIi6mBv9EkMb4u2mzTxGc9mBQIn
 n+evA4B8RbTCTjYnBJLh4Mw=
X-Google-Smtp-Source: APXvYqxKL6DGVvbbBG/yon/Jh8sGfCTKaD/UPoKbkqBo20BTAz868zmPZQeVlxrOXv/1ij9ACxWd4Q==
X-Received: by 2002:a65:5889:: with SMTP id d9mr21926410pgu.39.1561405763493; 
 Mon, 24 Jun 2019 12:49:23 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id d6sm214499pjo.32.2019.06.24.12.49.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 12:49:22 -0700 (PDT)
Subject: Re: [PATCH nvme-cli 01/13] Remove superfluous casts
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190619173701.8263-1-bvanassche@acm.org>
 <20190619173701.8263-2-bvanassche@acm.org> <87tvcfnw05.fsf@solarflare.com>
 <4fbac30a-51f0-95a7-7146-28805103f6a8@acm.org>
 <20190624184632.GA6526@minwooim-desktop>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <fed56227-bb28-96fa-157e-d9fea02addce@acm.org>
Date: Mon, 24 Jun 2019 12:49:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190624184632.GA6526@minwooim-desktop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_124924_568634_32B7AAF3 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/24/19 11:46 AM, Minwoo Im wrote:
> On 19-06-24 06:55:21, Bart Van Assche wrote:
>> How about restoring RHEL 7 compatibility with the (untested) patch below?
> 
> Bart,
> 
> It works for me.

Thanks Minwoo for the testing. I will post a patch series soon.

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
