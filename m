Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7295181F
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 18:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASbUJGK4galbLv03Xg9djHVg6u/UJ+4+HP82pE4CVnc=; b=j1twgj2LKpB6G8
	0JKyls6zqkCY2pPenkONIyhXCk4QdnhqiXvxMSPvN2q0IbPcqNo8L7ntEjh97B+gTkr+8Ksv48hGf
	R5FJKh5x87iOg4TxgKouBo7gLcukRjDzTDdUr0ILfWZYZlGkSUAx5fJZCl8L5BWlO7YsSHRr3Xcbl
	J3NcTftK5+uTJ0EicZ6u3E8PlcrGTb/iAQYI8dsc5vfwi3NumI07OWh6BEve6vFRio9ujiZFQsuwy
	P7wqFlFDaqvnJL0EB830405b8GLx4UfPrPYVjTJ/O7fHi4X2Hth0nKLzT80U8zGV5Lw9bfui2AiJP
	vglItqVPH0o5LhYYfZ6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRZD-0006DK-A4; Mon, 24 Jun 2019 16:11:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRZ4-0006Ci-Qm
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 16:11:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id d18so14553889wrs.5
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 09:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yv7g9F3JbTO6nm8BoK1sLWwWIrm0oykMKq0EW314Tag=;
 b=Fe8rLTSzr1sb5lUncJi7FEZ/eNkjQbgWsoQps4Gs4FIwHO5Tt7pGpW+q2micqCVJUO
 7ShvXQlvIT5mfTtppoDs94fCcCWtBGW81ycvZk03Hcylcgs1RFedpBJyoIfvH8euiPHl
 DpunVvYe9vBLeDXQKO0eZF0HZML4rrcQDtddoMdNhL/qIVaBuoZkMSLjdFFJY2Li6I/t
 1B+M3/3bu3B8S6dC+j5aqpVd7WNjFVglZTPr4bHaDaWfLQIHmcBhKRN36IrTl38jZ5wP
 JBRbz+xpqgU14cZKD0sFLhtB3ZDRlq5G2ySdfQLZ/8Vwv6QL/ZpQ+owzlRbHxs4+fnFL
 b6Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yv7g9F3JbTO6nm8BoK1sLWwWIrm0oykMKq0EW314Tag=;
 b=JQknwhC0y2DO77tmeM/cHhRnAiREUzaaNXtfzJ2b0K9YQbCfS0L5S4gBcId+FK6tiT
 Z1e6K4LPHFEtlCYVahcQi2oddM067xjTreMRI5gNvmWU5pl9LxfQAsXc6OCUCknujhNX
 UvbvNT093kVcE6humho5gm5nQ4ZgD082d1c5+0U5s7L+PXzUCTBIbPSnD0pT1ykrrSjE
 p30fzRJbasW9Rk8+Oite4cFu27pqWwjSOzSc9Y0NDQrkz3wihY2fs9PnrKuelx5Xe3Ug
 qjetRQW9Z8rIFL3DRrW0xsiJS3HLJWK5mFV/kEHazees+UFy2nmIUahSgiYasRNn3c/7
 dWBw==
X-Gm-Message-State: APjAAAX3DbseDmaa8CQpMCa37xP/bzVdI5++LMoHd1smASy/49QvrdVY
 wN1ip5A079SZoRfyHxkOan62ig==
X-Google-Smtp-Source: APXvYqx5dDIsMuJy3B70LLvSX82c79NQkaeseqdEewRs2ybI3ghntIz2mUkg4dD2R6KWySro3Xo6QQ==
X-Received: by 2002:a5d:55d1:: with SMTP id i17mr8778904wrw.46.1561392688805; 
 Mon, 24 Jun 2019 09:11:28 -0700 (PDT)
Received: from [172.20.10.174] ([85.184.65.84])
 by smtp.gmail.com with ESMTPSA id n14sm25505400wra.75.2019.06.24.09.11.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 09:11:27 -0700 (PDT)
Subject: Re: [GIT PULL] nvme updates for 5.3
To: Christoph Hellwig <hch@infradead.org>
References: <20190624061241.GA31634@infradead.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <00f87f06-99f3-b28d-eef8-d6bb8afe2f72@kernel.dk>
Date: Mon, 24 Jun 2019 10:11:26 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190624061241.GA31634@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_091130_908796_84D105D5 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/24/19 12:12 AM, Christoph Hellwig wrote:
> A large chunk of NVMe updates for 5.3.  Highlights:
> 
>   - improved PCIe suspent support (Keith Busch)
>   - error injection support for the admin queue (Akinobu Mita)
>   - Fibre Channel discovery improvements (James Smart)
>   - tracing improvements including nvmetc tracing support (Minwoo Im)
>   - misc fixes and cleanups (Anton Eidelman, Minwoo Im, Chaitanya Kulkarni)
> 
> 
> The following changes since commit 474a280036e8d319ef852f1dec59bedf4eda0107:
> 
>    cgroup: export css_next_descendant_pre for bfq (2019-06-21 02:48:34 -0600)
> 
> are available in the Git repository at:
> 
>    git://git.infradead.org/nvme.git nvme-5.3

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
