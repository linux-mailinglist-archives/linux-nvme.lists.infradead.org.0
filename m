Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027E7172C1E
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Feb 2020 00:15:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jM3lI+QbGT2kVEdH/KogBus5vZqN+7RlW9CuK1bW3L0=; b=RHSZube2wY7ilvOW8Q951QQNP
	6zH5+PCa6UT4pQZn5UOCA21lWyeKxlRbW+bUnmNVGoRpfXHf/XBxHu4pkWRjgxM8WSGrnHNLoRgvI
	EB9GMT7vc/A3lyqrWRG8E9YVcG+Glmfv+/EzMLeN01az0CiM2RDyauf+f3ZCGG6XlRfvEdXMH/eZ0
	P2x6CkU2ZT52xfqjpBNseMx7heWifEkJOe+jaNyP8Yucnj6WNpdAr3TBXBfhvMgFnCXyUfwEdJ1Ve
	wD/5MqJzplmd5ELh18by7dZhdGQbjqbG+m43hEKGkdspuv7Vy5tNAV1EfWYGzSG7xmNiUOgApVUsv
	Lb72GMgOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7SMp-0003LV-6X; Thu, 27 Feb 2020 23:14:55 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7SMm-0003LB-1Y
 for linux-nvme@lists.infradead.org; Thu, 27 Feb 2020 23:14:53 +0000
Received: by mail-ot1-f67.google.com with SMTP id g96so833676otb.13
 for <linux-nvme@lists.infradead.org>; Thu, 27 Feb 2020 15:14:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rp0PxYea93t1WRQ8q7wpuJfUZE+nI/QnHvJZCfZFKCI=;
 b=WlbkjbN7LBSfQebi4VPShheEx/PFE1saz/GbQIFMGexplel+AE9t+kB4aMNlsyNRSg
 dWqWSKA7cQh6ZfNwLj3MwQsnNpepz3eF8rWUOsU5f25b9AXhvqtbDsFmzMQmYwlEwjvx
 XcmgKknAWYoOl2rpy205h1FYiE2m69OOpeS6tuPLYwTpTsWzuO6FT4To1PHMIm3GrNmF
 9W3qqHXWAyBKjJnut7Hl4txBCuJU8KhhF4AH5xwGpm1yc1ULnEsWwOD3l4yS1Sf0WArz
 2gbDFK0KGBNdd1uCV0p8HkKIuv0olpZ33X4mYpbiFrmP62GOwIApn+I6QlFLfqyw04wz
 w1dg==
X-Gm-Message-State: APjAAAXU6AG0qrTH0ajLTmoty7vu1SqiOso644rnXkJJ1HuP60Rbv6Fr
 QChi3KhmrNW3opHHYt0TZTYABAm3
X-Google-Smtp-Source: APXvYqwKPFeb84SSFr76aajZgm95CA/DS9tP0Aq1G9m3lwkC7XsJkxEC93UopooFtd3nzHIErQTamQ==
X-Received: by 2002:a05:6830:612:: with SMTP id
 w18mr1080149oti.160.1582845291362; 
 Thu, 27 Feb 2020 15:14:51 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o15sm67404ote.2.2020.02.27.15.14.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Feb 2020 15:14:50 -0800 (PST)
Subject: Re: [PATCH for-rc] nvme-rdma/nvmet-rdma: Allocate sufficient RW ctxs
 to match hosts pgs len
To: Krishnamraju Eraparaju <krishna2@chelsio.com>, jgg@ziepe.ca
References: <20200226141318.28519-1-krishna2@chelsio.com>
 <b7a7abdc-574a-4ce9-ccf0-a51532f1ac58@grimberg.me>
 <20200227154220.GA3153@chelsio.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <aeff528c-13ed-2d6a-d843-697035e75d6c@grimberg.me>
Date: Thu, 27 Feb 2020 15:14:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200227154220.GA3153@chelsio.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_151452_083347_93E9E6FC 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rdma@vger.kernel.org, bharat@chelsio.com, nirranjan@chelsio.com,
 hch@lst.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> The patch doesn't say if this is an actual bug you are seeing or
>> theoretical.
> 	
> I've noticed this issue while running the below fio command:
> fio --rw=randwrite --name=random --norandommap --ioengine=libaio
> --size=16m --group_reporting --exitall --fsync_on_close=1 --invalidate=1
> --direct=1 --filename=/dev/nvme2n1 --iodepth=32 --numjobs=16
> --unit_base=1 --bs=4m --kb_base=1000
> 
> Note: here NVMe Host is on SIW & Target is on iw_cxgb4 and the
> max_pages_per_mr supported by SIW and iw_cxgb4 are 255 and 128
> respectively.

This needs to be documented in the change log.

>>> The proposed patch enables host to advertise the max_fr_pages(via
>>> nvme_rdma_cm_req) such that target can allocate that many number of
>>> RW ctxs(if host's max_fr_pages is higher than target's).
>>
>> As mentioned by Jason, this s a non-compatible change, if you want to
>> introduce this you need to go through the standard and update the
>> cm private_data layout (would mean that the fmt needs to increment as
>> well to be backward compatible).
> 
> Sure, will initiate a discussion at NVMe TWG about CM private_data format.
> Will update the response soon.
>>
>>
>> As a stop-gap, nvmet needs to limit the controller mdts to how much
>> it can allocate based on the HCA capabilities
>> (max_fast_reg_page_list_len).

Sounds good, please look at capping mdts in the mean time.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
