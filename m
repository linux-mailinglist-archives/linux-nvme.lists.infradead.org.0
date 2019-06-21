Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D1E4EBC4
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 17:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k6xfIvCi46ESjjvf1A/A3QBoNq/tAou/WkxtcBixTzI=; b=QAdmocaphTS4nBFMztInsei9J
	YclS1pNoi8gh9LhVzfJYRt0vwdKC7N7gcF8M8OZmBrJKMG81IXNNR7iksxekVQjz0fxu7TNY41xfe
	xfl1Ck9jpF1kzIsQziiZPTqluTmLMzoV2FWQF+9clkHS26oITyCqtJyHpNEzm/2PwEVmnpUkHLkiq
	41G7qFKE0L5xN4YsBgaro2b/esm6VQsjyzMpumiGvaTt8plU0Gftzvuv1No/dCz5Fk5l0LOvBlEyp
	9du+BoqJn9oAE+OKyvdM4UTELju40bphj3tcGlRjL5GkUMMhxaVZlrcvD3lXVyP4P4yHmAKMmkk4p
	aWjQerMWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLJu-0002qT-HI; Fri, 21 Jun 2019 15:19:18 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLJn-0002q0-HK
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 15:19:12 +0000
Received: by mail-pf1-f193.google.com with SMTP id x15so3785462pfq.0
 for <linux-nvme@lists.infradead.org>; Fri, 21 Jun 2019 08:19:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IxQycCx7ss+e3iArrwFT8wB2ncuh1rRgvfvwQzvp9BM=;
 b=GONiYixloSmmlC3J755pAbo27vPVWI1RsaL/wL0ZUY0e325iSuRAVl7Xownyqf+4fZ
 G1s8d9Ciw0RcIb5T/pugcbrWmtaJ4KY8zmZT4UZ71jP8Xh/Lxf2tm5slv4LfV5lqBuIn
 rnr+RyZI3IoBlGpQATC5wxvzWncf17uWkINq6osc6tUR+vWzsbOHhSo4UWnnOFCqq3W0
 UjnyrKQkopV4CV2I7wR1dDvfD3y28JUDUvqPsFIyKumOQRqjSmJFMOz5tl99hTNjgZwY
 nyTWPspUN8gPbhp2S7YZBgbakfw5FiFTBSzj5pZE+MFE8gUz3AVs1SOk1nNQuphqksB3
 zTCg==
X-Gm-Message-State: APjAAAU8eD9igEhWqGSDMVdezDikRKJry7EHA2NjST8IDVJxXHtJhek8
 r++4qWZVv2h7g7DRWdyVC0k=
X-Google-Smtp-Source: APXvYqyiFLtf8KcniaTYP6tkpHlT0ne7K0Uni1L01U7U4ChV5RGdZt8gqkNZIzYNp0FQEOgCtahhzQ==
X-Received: by 2002:a17:90a:3590:: with SMTP id
 r16mr7417233pjb.44.1561130346708; 
 Fri, 21 Jun 2019 08:19:06 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id m12sm2742671pgj.80.2019.06.21.08.19.05
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 08:19:05 -0700 (PDT)
Subject: Re: [PATCH v3 2/3] nvmet: Export NVMe namespace attributes
To: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20190617161222.253849-1-bvanassche@acm.org>
 <20190617161222.253849-3-bvanassche@acm.org> <yq1a7eeusa5.fsf@oracle.com>
 <68786de5-cdd8-c6d8-98a7-8a4310dac789@acm.org> <yq1blyrpupw.fsf@oracle.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <7e51e415-16af-2fc5-42e9-ebd0e6f94c0e@acm.org>
Date: Fri, 21 Jun 2019 08:19:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <yq1blyrpupw.fsf@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_081911_575001_DA9A48F0 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/20/19 6:56 PM, Martin K. Petersen wrote:
> Also, I haven't actually looked at the code, but what happens with the
> buffered I/O backend?

Hi Martin,

The NVMe target code supports two types of backends: "bdev" and "file". 
The file backend code does not set the IOCB_DIRECT flag. So I assume 
that "buffered I/O backend" refers to the file backend? As you must have 
noticed the patch at the start of this thread touches both the bdev and 
the file backends. So I'm not sure what your question is about?

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
