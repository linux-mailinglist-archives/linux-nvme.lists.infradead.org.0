Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A7B756B1
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uCP3eSQYKK8NH6ROgRQ8bLL6kUDJ2Gzm0oBISsV6gFo=; b=SWZ3BwdtTatdqIMcWIL3V6jl3
	qHrB+i62TG1MeDoFrHpc8GiJALtxaqxCcWP51aOlEIr4d39RBpZL83+XclzpnsD/HplUOQG9Mkrp1
	0bAkoNFfb73HRAHTV0ZziPuKR0dr6cYqkE8GfsnZayfarK8o4AYdyrosa1MvzrYO4JwiDuujS1AGU
	r+Mqj/rSMMJeUpQ1vh3O1xXfiMq4aQ4f3tKO+rl23Mr2ON7x9+/qGVwjPwSE4zGlKZ6gcw7Z4AMYq
	pWZnB/oblB8fDGiRfaupxpiZNMxnOZW+RRqBS8lrBJ2uNk+Mrd1XrHDdmgAluNgdhEmUBi1U0Ku2d
	AQVEFcY/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqiIY-0003Ns-4y; Thu, 25 Jul 2019 18:17:02 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqiIJ-0003MO-6f
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:16:49 +0000
Received: by mail-ot1-f68.google.com with SMTP id d17so52661709oth.5
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 11:16:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mf72JOljqEcmy/ZUQX00VafBUJnQdMDqI/qYe3vWrws=;
 b=Mi3nW/POaZDSHvWB054GUCgRUX8b4ib06wtzYP5+wJmXrAc3cbIiGV3Jqfl8sqoHHw
 PhFy/QXnBFTDj5nRfVXR8eJqusMWgqC3nDksrto90ZriGz+oqiTWZTaUVngqgjPYWpNK
 GUj5QzTDLUFh4qbsbtubtttEbej5KkyRFtK4yc/skLUTHBuH5TczS7lPwajlZf6GJBPc
 ysA7lAXHhNjklint8kDMo3iG5reVWxFCbWBReoeBcxjbGdKVd8LUcyNHWPP2yMpC8N4B
 wLn5UaL46O15jxQ8F8l01XVaF3ShZBT59AETQUixSxCy4PHXYfVvKS+4AV0IplCgQ0Fk
 j0eQ==
X-Gm-Message-State: APjAAAVRVY0Yi1zomiiBUFNilNoSpqFrBj2vdYXPVzN/29v18Ih3NlUH
 PaXpYYEWBI3d71pOAcp8K9ceSgwH
X-Google-Smtp-Source: APXvYqzWyC5LGwa7S/tk013os40hH9axD/Rug2eI5+1oAwwQK+sE9JCzUCD15+hYOGLOfgvDJyHE1w==
X-Received: by 2002:a9d:6282:: with SMTP id x2mr33856955otk.223.1564078605742; 
 Thu, 25 Jul 2019 11:16:45 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id t11sm16793290otq.13.2019.07.25.11.16.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 11:16:45 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme-core: Fix deadlock when deleting the ctrl while
 scanning
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190718225132.5865-1-logang@deltatee.com>
 <20190718225132.5865-2-logang@deltatee.com>
 <c52f80b1-e154-b11f-a868-e3209e4ccb2d@grimberg.me>
 <6deea9e7-ff3c-e115-b2f2-8914df0b6da7@deltatee.com>
 <dd287560-2cb3-28ab-c22d-fe9f3682c609@grimberg.me>
 <021b5195-9a09-4cc2-064f-940ada9cf764@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b501f53b-48e9-87a3-9023-8597ed1efc6d@grimberg.me>
Date: Thu, 25 Jul 2019 11:16:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <021b5195-9a09-4cc2-064f-940ada9cf764@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_111647_254952_BA5EBF65 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hey,
> 
> Sorry for the delay.
> 
> I tested your patch and it does work. Do you want me to send your change
> as a full patch? Can I add your signed-off-by?

I have a patch ready with a proper comment in place. I can send it
out... Can I get your tested-by and reported-by?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
