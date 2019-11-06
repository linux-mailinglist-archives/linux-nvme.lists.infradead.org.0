Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D4CF1BB0
	for <lists+linux-nvme@lfdr.de>; Wed,  6 Nov 2019 17:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2dYQF0uCwwHsgvtgqJWV2N0jZnFSqtfGwKINecR4y8s=; b=sEKNzocf8Pn/bDqLnx3FPaIqN
	dS3BjEPKa9YRdz305Wh/YF74ye41Vev9L5O/SSVNgngFvorKelR8hq2zGPPodY00M5uLrQMP0+Rng
	s+2L2KKFZWx0ht+D9Xd1oDC+fymwTw9N3GIExa2RxJixbKWJf3MpwKZn3JLKBBcr0T3Um+actl/mi
	9GwukisrmS8DL99aVCcEnLWvJhpoeLeHjh4dVoBjSOi9XiyWJ+JzZ5XhKIlJEmtk+pi6Xl9z56zBb
	NfNKsbKESzfQNCEeSFkSHW0ZyhehQ9NSyJwg40mYHXEa++gbm0E9JYiz1WmxO1oyvPrp/lbbrFoji
	8y43JoGVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSOXm-0007vt-Ol; Wed, 06 Nov 2019 16:52:30 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSOXf-0007vB-RA
 for linux-nvme@lists.infradead.org; Wed, 06 Nov 2019 16:52:25 +0000
Received: by mail-wm1-f65.google.com with SMTP id t26so4219076wmi.4
 for <linux-nvme@lists.infradead.org>; Wed, 06 Nov 2019 08:52:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6MqQFAvhb3p9iVpl0LfoYy+lgrSfclr/ZEaBEQWsfkQ=;
 b=GeO8O1R0SZ2z2mlIyp5z9FsV2Lz7+xHus9HmO70wpyEJL/A0xu48E2vwOCS2KeCtAq
 moeEEcpYUktOjGWWumLqs60WKJ3KTDdTwSK6zKzbqIqcV7lzklCxiTxJ7/YT7gd40pZY
 nqhtDTmCr58QuZbVxjB5oP5dVQBp8Cc5pYXFVrP9GvCHwGfguFOtbxUU3NOTsYGo1clc
 Jv55I/SMxzmaxSBUT0ykt0CzFd7gXEg82TbbyM2TzEL9jIMY0IPGtw06kVE1KeTTZrCR
 gJluR3tVtYXGKN1dUmca4muqrtIT/K7kTHxaOYgEMj1rOz2lPernZyaHFJ+V9eogU8vj
 CriA==
X-Gm-Message-State: APjAAAV/ZWpjQvJ6y3RLko1fzUIO2OVFtKOB3qIWxGlFM86doN1x+j4I
 YRr2s1CVzVm79ezQc9ymWpU93MwmW9k=
X-Google-Smtp-Source: APXvYqy1epSHxEVU9zLxE/O0ccjwHJanPhgakROxmiVkINK//58dIqAs5ojx3dThLmpJh3mLlvzqfA==
X-Received: by 2002:a1c:4e1a:: with SMTP id g26mr3534921wmh.138.1573059141642; 
 Wed, 06 Nov 2019 08:52:21 -0800 (PST)
Received: from [10.30.10.132] (149.red-80-28-245.staticip.rima-tde.net.
 [80.28.245.149])
 by smtp.gmail.com with ESMTPSA id w81sm3946650wmg.5.2019.11.06.08.52.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 08:52:21 -0800 (PST)
Subject: Re: [RFC PATCH] Workaround for discard on non-conformant nvme devices
To: Eduard Hasenleithner <eduard@hasenleithner.at>,
 linux-nvme@lists.infradead.org
References: <f220c69a-793d-9160-4f20-921c52748009@hasenleithner.at>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d96335fb-8907-6b5b-14e9-08eb1a796b0d@grimberg.me>
Date: Wed, 6 Nov 2019 08:52:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f220c69a-793d-9160-4f20-921c52748009@hasenleithner.at>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_085223_881709_96078A83 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> As documented in https://bugzilla.kernel.org/show_bug.cgi?id=202665 
> there are lots of Linux nvme users which get IO-MMU related errors when 
> performing discard on nvme. So far analysis suggests that the errors are 
> caused by non-conformat nvme devices which are reading beyond the end of 
> the buffer containing the segments to be discarded.
> 
> Until now two different variants of this behavior have been observed: 
> The controller found on an Intel 660p always reads a multiple of 512 
> bytes. If the last chunk exceeds a page it continues with the subsequent 
> page. For a Corsair MP510 the situation is even worse: The controller 
> always reads a full page (4096) bytes. Then when the address is not 
> aligned to 4096 it will continue reading at the address given in PRP2 
> (which is most of the time 0).
> 
> This patch makes the nvme_setup_discard function always request a 
> multiple of a page size (4096) from the kernel for storing the segment 
> array. Since this makes the buffer always page-aligned the device 
> reading beyond end of a page is avoided.

This needs to come with a quirk for it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
