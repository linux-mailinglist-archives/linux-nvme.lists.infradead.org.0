Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862E12092A
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mfQYx9OOb9N5LO6JUZWVOhHTNMcPqlHR7MzqpJlzPU=; b=crfGoao7atXEj6
	JLTG7SCdtimo+H2Hw9fBdb+wrC0poaX4yRgKt6kQAsvrZeVDWlALn8bjlKwa61C44v5sTIWrb3SS4
	y6Bq0Fvpyiolqjda2JTUsdWO4ct7lncf6XAnVqUWLUKSIdh5nwkL/h4xfQFhdeosJP7GxPmywXixk
	FU50O5zkXRIbKwwiZbRktW8IeOdWo7pU7c7OAHxsAzDPhS43mNifgtYg+ylP97SYdRWAYpjQH+NQU
	TfdGDq+uPIh+31b00XppPNr6D36OIljirVWlfsigPda0wnaYzNWOdIdM5xTgsme7kF+GZZEg9aVZG
	F7pDa//JiWzy5yYOo5CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRH4l-0001MG-5k; Thu, 16 May 2019 14:09:39 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRH4g-0001LX-AW
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:09:35 +0000
Received: by mail-it1-x141.google.com with SMTP id q65so6344818itg.2
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 07:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nvTEa3W0LilyOufVo8nEIfF6KLkAsq/kO20AWZ+aqaw=;
 b=Wtd5YV/X1PGOU13pxxLFsOSt26Ob6P4eSLyXSS4HTQe3BWhFiu5jV2JbglUrVWKIoY
 2Rbdiy5tb3f1qa39+JwW63qvpIGYEcsE65eGkkDmfGz2HZL0DE4q3LhbDZvjWsBdZliL
 vP5/Pk98RGoefblxlpd6xNAiLAk4ZwLA7eXfcTA/t4lLNgnxOcNM/Ymm70elBcOklWGh
 gBx5HKMJ1hlpibHMLzW0ZrrDDOsO0CeXAAv5ec60pPlyzqNrdZoAClNMEUHE2S2V7YsH
 He3+xvNAW/OJ9qmxRsaQuUpNNHx7n+1qjCbcqO7xfg9wGk5zozN36FqefRufobVu1mRD
 azeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nvTEa3W0LilyOufVo8nEIfF6KLkAsq/kO20AWZ+aqaw=;
 b=fTs6En5Zdi3gL2ghnyJvPlEETjVnPyu8wtagzdK3COUbtgTXRKg5F/jBCsuz2LG0Cf
 LJUms/Is3A1GLGTiAH4X43c05Z1t0QcN9iOAYCHjBywBDlkAHEz7LdljgsgACVcbfHvK
 zV+ZpGeWyDbDfJj9S87y8Jxuf4J5E7XlmRfOHHa4o6exWG+jLgJ3ziLmeOeDojoA4d3Z
 kEfZFq2+fkxM8LuwtQcXzJSpoZoO3NGAOMIuXBxhnLSYufHN8UjY/EIZgE5oAAwxW7oP
 cVZWMj6LXYdm+MLkbSUtYTaCJoO1VTPqDZNa1RKyN8taIp2c6nQBHmn5A8H8CORlVhZf
 k6IA==
X-Gm-Message-State: APjAAAW9bKpWkzT3C54X/hCshKoeTXWAgcRyYC8Tqy1Yx+S6Cr/Cw3W3
 JTTIqCZ+DY0IYjn/t7qWp/9xwtpUxdFotQ==
X-Google-Smtp-Source: APXvYqyjn7LNYS+6Vj3zFCFwcCEROb5g0XiJwJsufU1kr1PJ3NEvPdk6bpggJl5t+vpGXPxxOwvrUg==
X-Received: by 2002:a24:2e17:: with SMTP id i23mr1258603ita.100.1558015772560; 
 Thu, 16 May 2019 07:09:32 -0700 (PDT)
Received: from [192.168.1.158] ([216.160.245.98])
 by smtp.gmail.com with ESMTPSA id k76sm1703590ita.6.2019.05.16.07.09.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 07:09:31 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.2
To: Christoph Hellwig <hch@infradead.org>
References: <20190516082541.GA19383@infradead.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <a2c12d06-acd0-ea82-c63c-a068ec5ae1fe@kernel.dk>
Date: Thu, 16 May 2019 08:09:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516082541.GA19383@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_070934_405896_939BA631 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/16/19 2:25 AM, Christoph Hellwig wrote:
> The following changes since commit 936b33f7243fa1e54c8f4f2febd3472cc00e66fd:
> 
>   brd: add cond_resched to brd_free_pages (2019-05-09 12:51:27 -0600)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/nvme.git nvme-5.2
> 
> for you to fetch changes up to 1b1031ca63b2ce1d3b664b35b77ec94e458693e9:
> 
>   nvme: validate cntlid during controller initialisation (2019-05-14 17:19:50 +0200)
> 
> ----------------------------------------------------------------
> Chaitanya Kulkarni (1):
>       nvme: trace all async notice events
> 
> Christoph Hellwig (2):
>       nvme: change locking for the per-subsystem controller list
>       nvme: validate cntlid during controller initialisation
> 
> Gustavo A. R. Silva (1):
>       nvme-pci: mark expected switch fall-through
> 
> Hannes Reinecke (2):
>       nvme-fc: use separate work queue to avoid warning
>       nvme-multipath: avoid crash on invalid subsystem cntlid enumeration
> 
> Max Gurtovoy (1):
>       nvme-rdma: remove redundant reference between ib_device and tagset
> 
> Maxim Levitsky (2):
>       nvme-pci: init shadow doorbell after each reset
>       nvme-pci: add known admin effects to augument admin effects log page
> 
> Minwoo Im (2):
>       nvme-fabrics: remove unused argument
>       nvme: fix typos in nvme status code values
> 
>  drivers/nvme/host/core.c      | 79 ++++++++++++++++++++++---------------------
>  drivers/nvme/host/fabrics.c   |  4 +--
>  drivers/nvme/host/fc.c        | 14 ++++++--
>  drivers/nvme/host/multipath.c |  2 +-
>  drivers/nvme/host/pci.c       |  4 +--
>  drivers/nvme/host/rdma.c      | 34 +++----------------
>  drivers/nvme/host/trace.h     |  1 +
>  include/linux/nvme.h          |  4 +--
>  8 files changed, 64 insertions(+), 78 deletions(-)

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
