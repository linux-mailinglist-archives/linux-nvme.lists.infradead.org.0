Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4250A154F92
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Feb 2020 01:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=GMhm+UYlE2rUqis60zDQinzZi
	MiHYfejtYy+WMwS+GCROWX3vDrGhaGKMOlw6yjxtOHn3X/XMhQIPfGQsT0edRbBUWo9lHIAjAbLrF
	WozvMKf7HxSewuGG9wRqHjJuK9E7nob6OLhI6AadVnx9xF2bhtmc8fZrYgAeKGR6dMO5ozRiQog9i
	x/4c2h0EQ5T8vm0l6u62x3/59ntPHJT8Cwpc1KIr6gSh9KCJMW2p4c0FGsqpz128UUmqAef9VYx9y
	RcvgSYlMS+hibcgRbLVEMHQvkRE8ygGSOT2hpRlIRB1Z3lHCiR7mJ2aWLLr5hyKmQkb/Dptc/gHsA
	wGyezJifQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izr9i-00072U-OT; Fri, 07 Feb 2020 00:05:58 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izr9e-000723-T0
 for linux-nvme@lists.infradead.org; Fri, 07 Feb 2020 00:05:56 +0000
Received: by mail-oi1-f196.google.com with SMTP id q84so299457oic.4
 for <linux-nvme@lists.infradead.org>; Thu, 06 Feb 2020 16:05:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=OsCtBx21jDcO2I5r7qFS9PtMrEl50Expk/s6t6yWTx8+Lrc2wePvbGbaioFAK/ef/u
 jsDMPZwDSt8NiMZylypkdESf74qHs7Y01vsMG3yX01xusyTs46714AXntH35xsCMhtyl
 hctf/4yqdFTwsHw3aLWAvd6faEiL5uHTAE1OGUVZ3TnK/V6kvx/043bcaqKVLRb1A2R9
 Aizs6SMi36uhgmd+/9MFnrAtbC2338XErU8/bnVg/IacP81ujreEj8+j3FRqmTOqJbCw
 qV7puFNcUjCbrQp/KlobrcLtYrE+OulFHriVY2WrwnQ7iBttjgBB5RhTsBqr1NxSHkdE
 gbbg==
X-Gm-Message-State: APjAAAWYJxJds7/siuFxwIL3PMIY1G7cm3CBb7nL20ktpStTYibP6EFO
 sUW2Sa468avw6PXXSzWTizs=
X-Google-Smtp-Source: APXvYqymSiBOH7eOAt0rQANNLluwUUBN5YbQX3ymUeQTAjPLc2MAu3mYLo6QMmxXqR6XKCThj43/QQ==
X-Received: by 2002:aca:3114:: with SMTP id x20mr254268oix.121.1581033953570; 
 Thu, 06 Feb 2020 16:05:53 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id u26sm434885oic.2.2020.02.06.16.05.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Feb 2020 16:05:52 -0800 (PST)
Subject: Re: [PATCH 1/2] nvme: move keep alive processing to nvme-wq
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200206191342.10190-1-jsmart2021@gmail.com>
 <20200206191342.10190-2-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <50aabdba-d798-ad8e-80e3-6c40de2e77b2@grimberg.me>
Date: Thu, 6 Feb 2020 16:05:50 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200206191342.10190-2-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_160554_937376_27FE1E8B 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Nigel Kirkland <nigel.kirkland@broadcom.com>, maxg@mellanox.com,
 mark.wunderlich@intel.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
