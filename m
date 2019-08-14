Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022DD8DDD8
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 21:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6IrTE6iPNv3dSKf4ZuLLrAPcs5C6Dyj2XSvkK9lw1mM=; b=AQTvxIV9FXlwYg7YjvFAb0T2+
	aDhJlDl0BtwRHUHeAv3KGNSZIDZMwxWdQUWSEk2K2v5908XpxROrM/LYVL9zlfCQHr7k9Y+oTWXnt
	J0KgH2zT7Swc3EJsDqfRkXUdBV3lA/5uY+TuG8FDS8dGsh77WuhLDhxdMlcO+n0QW+TmWgG8u/BBt
	ii/vsbWp1Y3JouXyUjVlHMKDBlzcV2BvnRfy3huk/V01oMybyn+qXMGJ/gyNIBbnQNhvLG6Oke1Mx
	WN7/zrt/VhGUSj67CgAFWnrv2XJsLyEUB4YdWkNv4p5d8AE9+2Ai13SrSt1jf5S4wIxY79mgGlQ5q
	W0Fg//r5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxyqi-0007nT-Be; Wed, 14 Aug 2019 19:22:20 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxyqX-0007n2-Ug
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 19:22:11 +0000
Received: by mail-ot1-f65.google.com with SMTP id k18so652314otr.3
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 12:22:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LxqeTUiYUsG0G8NyuG3f0T0v6puXDuhBSbPGymyiyUI=;
 b=Xa2S4g3mwoMnjaRMjJ72K46fgv7dpo1QVjKuTZiumIzCf86iItYimmdyv9+S8x9wXY
 BXOZkQC5Ma+iawS5UvFrqv5bB4dKh9BObgX8uxEKlGVwliHHo7sgrAHK80n3VVAOkgAF
 gaHbpMVAwaWUdvEHwHhhXL6ByEFOXCRR+yEihGJyjvjI8teoWKyxKEfZGM2/7b0Zyw2F
 4uaIuY5x9GDfpNlCTYblXx4Y5aORgYhGP27g2Rhse2TcQhpyVM0Vs6j0D7bdanmPnYHp
 +qWJfEdV4T36xbIEL7TDrvdOLTI3esSIf7tudycYSNnNiGyy3RzIQVjT19sPZHK597dJ
 f7Rg==
X-Gm-Message-State: APjAAAUcx0Z4NGC7R6IkL2hbiBPEhijpeYe2OHoHOYjWlDEdDJbSqAbE
 +3Myf0imfUo9yptyqa+1B7U=
X-Google-Smtp-Source: APXvYqzR74bg7uVqsQDiDikrci1UGS6hqPSxAA1aio8lHCkz7cVBSMDJSGnib2opDOWZSnoRbvxuRQ==
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr575345oto.250.1565810528840;
 Wed, 14 Aug 2019 12:22:08 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id d27sm185263otf.25.2019.08.14.12.22.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 12:22:08 -0700 (PDT)
Subject: Re: [PATCH] nvme: Add quirk for LiteON CL1 devices running FW 22301111
To: Mario Limonciello <mario.limonciello@dell.com>,
 Keith Busch <kbusch@kernel.org>
References: <1565798749-15672-1-git-send-email-mario.limonciello@dell.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4352c052-50f6-ed52-deef-69b321c4b61c@grimberg.me>
Date: Wed, 14 Aug 2019 12:22:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565798749-15672-1-git-send-email-mario.limonciello@dell.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_122209_985189_348DB304 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Crag Wang <Crag.Wang@dell.com>, sjg@google.com,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Ryan Hong <Ryan.Hong@Dell.com>,
 Jared Dominguez <jared.dominguez@dell.com>,
 Charles Hyde <charles.hyde@dellteam.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks fine to me, Keith can we get a review from you?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
