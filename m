Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AA7F867A
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 02:36:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4MY84lFSZ1aSKfq4fHGINRZiJOY1mFXzqmUcOXdjbCo=; b=C69qneyS82/sg4wzSSdvNgvaS
	ifOCaHBMwGlt3OO6qgYOZWzwB4WRkUzFp1j4WTg/DDC3aIkQNiD5dBwTj9hEq4+2gSxRLusjZb26S
	fiYpfwMilPJi68Jy3QcJGYjXDofb7TYb3PTj8GG3He5UhE8JOoSsDjnh0BX51TuiP2rzndWVwWWPk
	HfJbqttu0NPsUlFReFN+o0pHlNh6zpn1yuqVl+1Q5vzeqwOHRnBnqdSHtnKSjjcBVltJ6olYv0F9M
	ASGGSQIvLBXVsvP2WiSNOHPF8HEHlW7NTkHEm80bzQfB1f9z1VSb3XqWFsif+x2F8pwZE3j1oTltH
	xo0ei5efA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUL6F-0000Nn-5h; Tue, 12 Nov 2019 01:36:07 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUL6B-0000NL-2F
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 01:36:04 +0000
Received: by mail-wm1-f68.google.com with SMTP id 8so1238433wmo.0
 for <linux-nvme@lists.infradead.org>; Mon, 11 Nov 2019 17:36:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xkvqzmMoFO3wi3U1DSrW8dXUmXPhOuxmp65IDJkRglI=;
 b=MhvWoJJiUlGHZbtYRbskoqX44oWIMixjcmS4CdsIQ7/8z6RFOUSsGsAmWOYyOJqolI
 GFk0AjgcMZcWPG47zfIDpcIQ9s/6Yi5LbKNl4LO/bEsOuqbj42am8fMnqSOUVSCe7seJ
 G7+ZadqIQZlmycKf0vfjCo15kI31HYwk6xpufOIKFVuXfn2TQnZYd56ebi8EgnuZUUKr
 l+Eb8Ax3VkYYLttEEgke40Hz560J5yV5u00pUs/NacSopF7DyViYt/rN36rixfC3hoOh
 651vtLGOjeCLrfxpuCXIyraO/NyWwSowJlxORDld6xVv8UbhYdtbMKsL9wwRaTf2lY6q
 hLxw==
X-Gm-Message-State: APjAAAUx4DTwcGloTdH6lbEenQXUdxOaIgYcN7rUrOCFfNWsb/bSQce1
 WFXmEttGJtrVHMJ5BXl5xZ0kP6nT
X-Google-Smtp-Source: APXvYqzgV7G8qHpLJ8wSaURcuYGnQG+F1fwZYJu/EOWIdlvp73MtM2A7IJ7ltmOB/hJE3nXSSbaGQg==
X-Received: by 2002:a7b:c0da:: with SMTP id s26mr1519964wmh.6.1573522561397;
 Mon, 11 Nov 2019 17:36:01 -0800 (PST)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 19sm38558061wrc.47.2019.11.11.17.35.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 17:36:00 -0800 (PST)
Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
 multi-mapping queue
To: Long Li <longli@microsoft.com>, Christoph Hellwig <hch@lst.de>,
 Ming Lei <ming.lei@redhat.com>
References: <20191108035508.26395-1-ming.lei@redhat.com>
 <20191108035508.26395-3-ming.lei@redhat.com> <20191111204446.GA26028@lst.de>
 <CY4PR21MB0741004E62F9C50B8EF7DA9ECE770@CY4PR21MB0741.namprd21.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e03177f7-852c-d069-ddb0-4ab8a2cf5f56@grimberg.me>
Date: Mon, 11 Nov 2019 17:35:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CY4PR21MB0741004E62F9C50B8EF7DA9ECE770@CY4PR21MB0741.namprd21.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_173603_108416_D3E0106F 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for multi-
>> mapping queue
>>
>> On Fri, Nov 08, 2019 at 11:55:08AM +0800, Ming Lei wrote:
>>> f9dde187fa92("nvme-pci: remove cq check after submission") removes cq
>>> check after submission, this change actually causes performance
>>> regression on some NVMe drive in which single nvmeq handles requests
>>> originated from more than one blk-mq sw queues(call it multi-mapping
>>> queue).
>>
>>> Follows test result done on Azure L80sv2 guest with NVMe drive(
>>> Microsoft Corporation Device b111). This guest has 80 CPUs and 10 numa
>>> nodes, and each NVMe drive supports 8 hw queues.
>>
>> Have you actually seen this on a real nvme drive as well?
>>
>> Note that it is kinda silly to limit queues like that in VMs, so I really don't think
>> we should optimize the driver for this particular case.
> 
> I tested on an Azure L80s_v2 VM with newer Samsung P983 NVMe SSD (with 32 hardware queues). Tests also showed soft lockup when 32 queues are shared by 80 CPUs.
> 
> The issue will likely show up if the number of NVMe hardware queues is less than the number of CPUs. I think this may be a likely configuration on a very large system. (e.g. the largest VM on Azure has 416 cores)

This makes sense. As long as there is a cpu core that keeps feeding the
sq nothing prevents from the irq handler to run forever...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
