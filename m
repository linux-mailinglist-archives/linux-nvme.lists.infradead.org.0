Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8075AAAD4F
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 22:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wsz2/NCE7z0bPT7Ad3WbSbwwnr1EFbzxNT7mpxYLIPI=; b=FZeXxQ/iAAzJEoypnN+03Y36l
	ljYQxiVWVdsC1rh1XS9DfRb6ZGySq4NEAfGxbtvjYP4IoI9KZS7kP5pIPytOQ90xIDSd3NuFdjQBb
	VHT/tO0MOvzVjDdggEZY5yP8P8oIknFCCMDGz7J40CRTngzaBuJaihJ1eB1KTf7sKoTZUsA/52BQW
	KE40E3jovnfsaoBhX/k+YtYWsQjo2qn736ss6iphpWi4WkkZq/Y/PFuwbvDyUUI9frsdKvR3cXPcv
	K2okWPeostJf7iWF6RIPwb15gwXNIon+wtVtgS8d1mnwK2JeN7Fr8eCr4zkFgAIx1x4YCE2rGSVzV
	l9++LO65g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5yfK-0002N7-Iq; Thu, 05 Sep 2019 20:47:38 +0000
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5yfE-0002Md-9g
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 20:47:33 +0000
Received: by mail-wr1-f42.google.com with SMTP id h7so3273578wrw.8
 for <linux-nvme@lists.infradead.org>; Thu, 05 Sep 2019 13:47:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TBAqccM83UTgw/I1igquSAVH+OBG9f2ZAiD2Fc4Nqb8=;
 b=cXmS7EVlAbnkfpHRN3fiw/fUOBn+c+Vaty7zDDruYe7/aPu3Pe1Re6qFU6J8M3EzwJ
 lOEOwGyOQieBBTENMdB6nfINbl5XJuz+o1AHKeXdw+ugEWqLEMMacEuNigwkczdU2GX7
 m1hRbkDDlUFwG3JY8kAUuA1UEeFWnjOWvaDSdgXFXWe+GwQp9PUXtxpQHnyd4mns5IJ0
 qfqd43zINnAK7MfSeLwfJ27GcJyytd0ufeHGsnt1NJnN61Icb5W51Z7eCaYnzoTQ6Ew5
 gzlIt4Y+ftlaDJtakueNOo/ljjkJZW00efNgkZQyi6Vkn4c/AVq/VoNaV4CBH7YUK1z3
 gC9w==
X-Gm-Message-State: APjAAAU0rPEtAQ1mLZCemBP3vLbWdYOSbQLn3aJbgurJLkDzw3idJ/aZ
 1rMPm4aRe4C7LE/3pqS/wvp0zqqi
X-Google-Smtp-Source: APXvYqzoouT1IxOATzmXZt9zDxmio7MalFWt+AftZcaAZgi2p8+4CCdtKHGI8BvwcsvXg2PlZvdj1Q==
X-Received: by 2002:adf:e986:: with SMTP id h6mr4347997wrm.59.1567716450456;
 Thu, 05 Sep 2019 13:47:30 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q14sm7879914wrc.77.2019.09.05.13.47.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 13:47:29 -0700 (PDT)
Subject: Re: [PATCH 5/5] nvme: Wait for reset state when required
To: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
References: <20190905142607.24897-1-kbusch@kernel.org>
 <20190905142607.24897-5-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a1895103-5906-7a46-9222-478bc76a2dbd@grimberg.me>
Date: Thu, 5 Sep 2019 13:47:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905142607.24897-5-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_134732_342157_F3F0A068 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.42 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Disabling a controller in a path that resets it in a different
> context needs to fence off other resets from occuring between these
> actions. Provide a method to block until we've successfully entered a
> reset state prior to disabling so that we can perform the controller
> disabling without racing with another reset. Otherwise, that other reset
> may either undo our teardown, or our teardown may undo the in-progress
> reset's bringup.

Why not simply flushing the reset work like nvme_reset_ctrl_sync?

I might be out of context here...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
