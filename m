Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE560FBFD
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 16:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TkmaNLQIWo3E0vJgw9PO3L2h5QkxwWaXHNIvSi2z0xc=; b=Bl/tBUhQFwAFUi3k1Hg/sosJJ
	eRYbc5Bwntc8GD4F/Rm5cAz0kDNdkY5fkYzrnBo0ND/nQbu61gMOUJLpkKTRiNkhPBoi2OQBkvpBZ
	tlyA1Xjqzqv8YzfuOSDHpLshQUvBGSZG4XS67YNyFnBgw4vfPLGgBvAHMJ0BlGXleIpGJ4ND4Bl0E
	hOQ/hBfiOkJRZymr3wPawargaFiA9kQ/em0IFS14bTnbXdyNfUBW1DPI3Cuv0BnDuYJ2rHRCjmEof
	hDas5TAH2ceivuCM5UuRU1V9bOCyJsND5uH/ukMAK9TwokgRdexXNbSLZEmMqwe3s5HYqEJuQpNd1
	HSj/EIctw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUDo-0001pa-Eg; Tue, 30 Apr 2019 14:59:04 +0000
Received: from mail-yw1-f67.google.com ([209.85.161.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUDj-0001oz-Bv
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 14:59:00 +0000
Received: by mail-yw1-f67.google.com with SMTP id x204so128572ywg.6
 for <linux-nvme@lists.infradead.org>; Tue, 30 Apr 2019 07:58:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2KFXJIuerbzwUgzQXGgmlBes0NZ5rbkdHOKFDRMNr9Q=;
 b=Tph6UkeTEZNPnIeT5yLqj2hXzGFzVRT/CFFeuEdYkOVgjCvCMfTDqxjB4KEf5g5ruY
 yvznnyBVAt6oYmdmLDULe+725Mgg1fTxirli5B0E0H9C+qnhPF71EgojhUkxrOOXIOX4
 X03vawljYJVHqJeAT4Xirjo4kvNve8n9oQL7GaB7/cqYGhyV6WAzJoPYBtscYAHDizga
 3/mTt/CqPxB69xxFhXfNPoU0PqqZ/hQ25Mp0iR5e9i492zz7cvKIVtU0frqDwMKgh95P
 TEOuOcTgAGBsqliW22Yp/B0dOmZ9dUMVq8dlYrd1rxrkGkHFqAB4zBCw36DrHCol+qN7
 Vojw==
X-Gm-Message-State: APjAAAXGPpoVOKGLQug/+xQwcaU573f0PqYz6IuzOgJ2hJnliHE83M2r
 h49Lg5z8Uek/CKx6RIwgEmA=
X-Google-Smtp-Source: APXvYqyxBUovCGoCHveYFT1+BHHzgSZq65Nb+SMwJpn/3Wdxda7geKa+LNupo6iFNl/1XeZJ66qe/Q==
X-Received: by 2002:a25:ec4:: with SMTP id 187mr30955616ybo.280.1556636337860; 
 Tue, 30 Apr 2019 07:58:57 -0700 (PDT)
Received: from [192.168.0.36] ([12.219.131.58])
 by smtp.gmail.com with ESMTPSA id h204sm36389142ywh.110.2019.04.30.07.58.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 07:58:57 -0700 (PDT)
Subject: Re: [PATCH RFC] nvme: fix race condition between remove and scan_work
To: yuyufen <yuyufen@huawei.com>, Keith Busch <kbusch@kernel.org>
References: <20190411133227.28435-1-yuyufen@huawei.com>
 <a9d6bf42-e01a-4e56-acc7-5d87ac9179f9@grimberg.me>
 <20190424162659.GA15412@localhost.localdomain>
 <55a37c3e-5732-5162-37ff-80151363cbc4@grimberg.me>
 <b11cc221-d400-8a23-4f26-5e69381fa173@huawei.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <99165a73-59e7-150f-0818-4ce010f264b0@grimberg.me>
Date: Tue, 30 Apr 2019 07:58:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b11cc221-d400-8a23-4f26-5e69381fa173@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_075859_411173_E55429EF 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.67 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: axboe@kernel.dk, bvanassche@acm.org, james.smart@broadcom.com,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> This looks good Keith, Yufen, does that address your race?
> 
> Thanks a lot for your response and suggestion.
> The follow patch can address our problem.:-)

Keith, care to send a patch?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
