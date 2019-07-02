Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ED55C8E0
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jul 2019 07:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gsf429C3p5nWSRU7yr0dtecdteZoVT6Ds3FI3fZI5mU=; b=GknRSGpi49SeRI8cukAyWSdo/
	H7G/vxPypC8l1xsQ9dadkCr7KC+8LUtIFCQuwY+svkVGGduNGIr8jdHT3oaAWaXDZQswWXgLqcK1G
	TaP5hJFLbbNnCNBEpcppbf7xFYyQL0SkapuimNwcsTR86HvABxhZ8+jpz68hX2GLRrsVTA1dpG7k1
	CdsJF7yuwKMZMpu+995naNtcc7Hm94hJk2LPKG73AgiorFBxl849XEdE5fVS8dtgHeJvJ+6+Wn/Xa
	LnimUlDRjG/K5oHdhvgVLPlTu5J8fYVKg5tFpTAGUuc31TNzVH2TfdFvAzf6OmQSXB0LfXukw5NA2
	QRd8y2Zxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiBV7-00051u-NX; Tue, 02 Jul 2019 05:38:45 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiBUx-00051D-5p
 for linux-nvme@lists.infradead.org; Tue, 02 Jul 2019 05:38:36 +0000
Received: by mail-pg1-f195.google.com with SMTP id w10so7104743pgj.7
 for <linux-nvme@lists.infradead.org>; Mon, 01 Jul 2019 22:38:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vt+9rIbxNZWbCarvnqoPKQV/aYJq8p2kUnKTksQCC/A=;
 b=AQ3r307vXODvu3eIR1Kh/pHAuVXXtt+a9CJyPkWcHkrlewH9F2/5ULls3h0tufM016
 PFpgUkVbBX/ES4yVzx69DJpoasEXd0H9B2TumuLLUaYUVZCtvmPJRGFbuOUDTASxHjsR
 jDw8xqxBc4S8Sgvugm3fBTtZDbmLXQFNuCj7Nc1An+G+m3DI4RRgkeDvbThJtHE2Zd/w
 3j5J9SZG59ZHOuiItTcCnIewh2rwHHjHBgDwNKrryx5GBg15Odrxh0EpYiBAJ8asGAwr
 5T3cYMsUEVK5CmY3c2rRc+ZVeMAf1YRjE+woEdj5Kv2vXuUDVbm/zCuhbkxMYK8RpmAp
 WX1A==
X-Gm-Message-State: APjAAAUX85aRKTbwox5EL8ILjiAtuZdRcEflQOLLP3IeKw4t4ofxJ3yv
 Q132PXG+Ro/QRiW0xjcuOnoiivHC
X-Google-Smtp-Source: APXvYqywyjPoapzDrlzH0uWJMsmOxGRvfOTnVxt5gTJvQds37tEIWt3cEXAjGarc3s8ijlZodyxwVA==
X-Received: by 2002:a65:500d:: with SMTP id f13mr28190569pgo.151.1562045913054; 
 Mon, 01 Jul 2019 22:38:33 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:5da2:6508:3da7:e74a?
 ([2601:647:4800:973f:5da2:6508:3da7:e74a])
 by smtp.gmail.com with ESMTPSA id y16sm13501971pff.89.2019.07.01.22.38.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 22:38:32 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
From: Sagi Grimberg <sagi@grimberg.me>
To: Hannes Reinecke <hare@suse.de>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
 <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
 <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
 <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
 <68599577-450a-ade1-451c-f310e5094317@grimberg.me>
 <66f3dd84-77cd-fc45-025c-4082cf3df7ec@suse.de>
 <2a6168f3-37f6-1acf-2e89-48a3b9cac8e1@grimberg.me>
 <ff13e243-da8f-f04c-d31b-f7c46d3a4375@suse.de>
 <960997d6-9ce3-5730-00e6-5b2639502eaa@grimberg.me>
 <04a61807-ed2c-c91a-6eeb-c3df864fedc4@suse.de>
 <c73a67c6-719a-78a8-98b0-5679d08a115f@grimberg.me>
Message-ID: <0a1029ce-c140-f51e-9402-b98483f0b9e9@grimberg.me>
Date: Mon, 1 Jul 2019 22:38:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c73a67c6-719a-78a8-98b0-5679d08a115f@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_223835_223740_F2920B8F 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Hmm. Not sure if that is sufficient, though.
>> We do issue several I/O in the course of nvme_revalidate_disk(), and 
>> as we're running fully asynchronous here the disk might be removed at 
>> any given time. Cf the above stack trace; we're getting an error for 
>> the _second_ I/O (nvme_identify_ns is issuing I/O, too, but went 
>> through without errors).
> 
> Its not protecting against the I/O, but rather against queue freeze.
> 
>> So if we were to go that route we'd need to protect each and every I/O 
>> with that test.
> 
> Why?

Hannes?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
