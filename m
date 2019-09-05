Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9673EAACD6
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 22:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kHClk0CqOxV4yu/q7PUokt0sgSSmTL9aiqFpT747qKo=; b=Ql0IKG86in4MPTGSkJ8od3dN4
	rqFaNhTsovBpVGChMDbXrlX676/Aq12rmddsX9Xbf195aVwLcOLF4RnY6512v/bJBg8NvawjV+Ph7
	l4bI276maMlnlT973w4DfU8LgJiOdK9iz5Hre5i+qMbNaxHGfKsWqkmxaigFdrtEaHfAaDdi3MJPV
	H3Ap63F3E3K35HfXRqlJxXCq39onKs0klhRDlxovx7NbB/pJbn0uW4BCvFrn5cYLLp4hgT2jLKT3I
	Ao4o42lB7tNLE53oQMkiem7iDbGqS7WdUnAobGc6pVsRszVy8Jp7S9Cz7CoVwHjmTANTgC+hcq3o4
	KpB0DQwjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5y8g-0005S9-Qb; Thu, 05 Sep 2019 20:13:54 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5y8a-0005Rm-P8
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 20:13:49 +0000
Received: by mail-wr1-f67.google.com with SMTP id t16so4199893wra.6
 for <linux-nvme@lists.infradead.org>; Thu, 05 Sep 2019 13:13:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xGhGYlFTga9YTUsjSXrdSrCqP5Yq4m009jXmY7ILS9Y=;
 b=aApONFA3AmAaZ6LP83Y6yy51RJEHUpMju9t/24jgaeTkceAyE4fT3ytDDLkgKFunKl
 0CpO7VCOIh1Ls/CGZWlq80lq1ArJIcSCWNlWcDxwj/mQhwJAR2SoZuhp/3M15LaNNmUw
 AvceYzPsP5SJSPVbzhPL0oiWZsyd/K2ij7Nl+Ssny3UQ4AfWcwPeoHfyEzMDYMDoryOq
 f+6+L4r19oKnjlyH9D1eJ+hHXCxh3nJ+N+Abn4gtFX/k4MvUBSqkl2Hq5UB1xPEkgqtv
 B1SEm7OME/w8LgivMR1jBmkdDZYM31xvF87bQJKE26j3f4Urtz4nsSoPNcmeAyAQBB1A
 UmYw==
X-Gm-Message-State: APjAAAXyRbinF5FQgy6EmgjbZ+9OKNTXQHelJLzfIWRrlOgXnXSH1AWs
 ds3fLmzJWYpZLqqcDJkVV3ACnMb7
X-Google-Smtp-Source: APXvYqxYtQdMBtWDqTtWUEFRh5Npmee6TAE8leuwldi7h9QnUCPT4AnxsvMeUJ8iusWKh9fKQzSlNw==
X-Received: by 2002:adf:bb8e:: with SMTP id q14mr4105932wrg.74.1567714427309; 
 Thu, 05 Sep 2019 13:13:47 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id w125sm6504705wmg.32.2019.09.05.13.13.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 13:13:46 -0700 (PDT)
Subject: Re: [PATCH 1/5] nvme: Restart request timers in resetting state
To: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
References: <20190905142607.24897-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <65aa0709-c8a7-2988-864a-4bda0a4c3ce8@grimberg.me>
Date: Thu, 5 Sep 2019 13:13:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905142607.24897-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_131348_819209_04A7147E 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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


> +	/*
> +	 * Restart the timer if a controller reset is already scheduled. Any
> +	 * timed out commands would be handled before entering the connecting
> +	 * state.
> +	 */
> +	if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
> +		return BLK_EH_RESET_TIMER;
> +
>   	if (ctrl->ctrl.state != NVME_CTRL_LIVE) {

Not sure I understand what exactly is this solving? if the controller is
not responding to a connect command, we just added another ADMIN_TIMEOUT
to failing it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
