Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FBA15628C
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Feb 2020 02:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zwzXj9aBCzo1ItLx9XWPt6MqcRBbrxhaOgq3OXsK0dM=; b=J2L/4nJo4PHhm1b8ud8WM0ZMu
	/Yjasef7JrNhtppXBQT5FoxHjQJeBxtrxEEKZu56CwtLIDnYH/4pOxvDMPieXy+KXUCcbpkjMJHqB
	sxrgNDwmBPL9xZFVASwY9rnRjsJEUNVjB/0FwDIg9z5MjLS8bx5F/ye4DA49vZA3Ju9+E3P1TbyeO
	Q2A0qXyCQdXKXLl1SDfqvEiOWExN4qtFSdh22BSv9kFx/6/A3AmoLsORP/ez0hbGtTmB1zBwdeJvY
	Zfsudq8pXphxnqqCAMRLYvzf5Yv0HQsyVFrMVlNeq2Ihk+vkRtU4AAj+1Y2WCVf5yz/0iGdrfvu7l
	OlHKLAK5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0F6A-00016i-NZ; Sat, 08 Feb 2020 01:39:54 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0F66-00014x-95
 for linux-nvme@lists.infradead.org; Sat, 08 Feb 2020 01:39:51 +0000
Received: by mail-ot1-f49.google.com with SMTP id 77so1157333oty.6
 for <linux-nvme@lists.infradead.org>; Fri, 07 Feb 2020 17:39:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OT5E1FZ48hdUT/4/xlZID2ngxX5C9h1Pv3L/b01+wPI=;
 b=CZaRQ4+AkVfV/vkPvmcpiWBQZMq/3VRNBVadFOkCuMCToVGBAjvPVY7e4DCOBSIwyk
 RhcZ29cmH8T4pkwk1K0zj8DwHu55NNCHzhG54yHdxhxsdtSLY6ROli3WCDqcPs0OHrrm
 s8dQvV49DIItlgyexz0wP8+hbDyup153Wi0NqD+DnJUf6A3nLuHCwh9eThAfCZ1ILPQl
 JxSdjmrYrnVfvtK/nLtylFWFuF7GZ4mE0VdZqgm39CRE77NIIqFD+mFFa/tx1UwsOkI+
 RBe4HwgwuMnDAVhcEOig6R08aAVD75NGBVNFemeU23ea3ZDB+ZnwASWTOziJEGfFjeog
 VH2Q==
X-Gm-Message-State: APjAAAVqUwZbDPUqZAFFVW3P5BTeiqwIclYvspwnTItTHfKvEu3xl2OO
 eDKCwF4w/DzG6MSZ5qVRnJkYcIiy
X-Google-Smtp-Source: APXvYqxZtHhUhlKg/7XCSQlH/yHJXQHBMOejWLiBA2mEeJK2qU1us2X2cuUkeqWrlvXq84OHyOnOTg==
X-Received: by 2002:a9d:bb8:: with SMTP id 53mr779117oth.150.1581125983603;
 Fri, 07 Feb 2020 17:39:43 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e206sm1635733oia.24.2020.02.07.17.39.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Feb 2020 17:39:42 -0800 (PST)
Subject: Re: NVMe/IB support
To: Talker Alex <alextalker@yandex.ru>, linux-nvme@lists.infradead.org
References: <12132471581079402@vla4-9d01d86ae0b7.qloud-c.yandex.net>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a75b262f-ea20-682e-ec87-72e8f5b5468b@grimberg.me>
Date: Fri, 7 Feb 2020 17:39:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <12132471581079402@vla4-9d01d86ae0b7.qloud-c.yandex.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_173950_316704_E90DD778 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.49 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi,
> 
> is there really exist NVMe/IB solutions?

No, it isn't.

> I noticed that ConfigFS in target driver permit InfiniBand address type
> but it's no use for any driver, except maybe as a referral.
> 
> Does anyone has an use-case for it or this one can be safely ignored for now?

Unless you are interested in adding support for it, you can safely
ignore it.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
