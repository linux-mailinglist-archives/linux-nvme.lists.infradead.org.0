Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F3E115A63
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Dec 2019 01:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsGTnR3xsTpYEAKZzAgDdaBwWaIhwPpGkoCIfn7IrD4=; b=JnUoKJ/PuWbt0u
	qHTfTNHM7JzHJt6sIELajIGvU1JatjWdl7yb28LC3ZdbMrVlKd0FKCHM7O+d/X1VSaIGdIh2F/vUE
	0ezWCQoDg4yIraxAFdpRoJCtYPylBi0YN6pjCwuyLvuGZMvLR8gdSu/r3Psc9Ff/sb24O1i2fqUZZ
	Fk82e5OTAk6yFX4MwbHvUXFVgRi0RIYQvHM5XQdjpIE/P1vV3glXUdcBp65Vfa9k0+slF0uEkAH8g
	AjYDtD7rFFPO4WhTXCsL1j9O9wueKU8hzQ/9C6qM/iE5v7pWnAeqft6vVUEv85GHYVcMWmLZPFQA+
	/N7SZhy6rYkHZkISOpJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idOIr-0002Xu-3Y; Sat, 07 Dec 2019 00:50:33 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idOIm-0002XR-IX
 for linux-nvme@lists.infradead.org; Sat, 07 Dec 2019 00:50:30 +0000
Received: by mail-pj1-x1035.google.com with SMTP id o11so3441864pjp.9
 for <linux-nvme@lists.infradead.org>; Fri, 06 Dec 2019 16:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lZ2eyLXB3h8ZfXKAaygQY4SpckOnfFI+3hgY0g/pxMU=;
 b=XofBSbbyPAA3gUhm6UOg8Sn1yiACfG5b9e61N48RyqELFM/jU/zThYWeHSyNXfmiUw
 0Om2/I/UQVGlu57qTIHtfnwpi+aPbXikGo2naNfSmBNAzRiehLI1dWDmZQ9iRj3DabkX
 y0kymWDaZJqUYmvY7jA8Y+mntWzrlyRZMWZUGGjaVcfFvAV7Uq0qGgOR8gKp+5NkCYBO
 H4ddMV8ItaujY41I5/TZ22jaIejIoXGzod7O1mXPwzA+jR7ypFkOnnYS3Fd5SEL882gF
 M6w5tS5gYNd8di3MA88FeJNfRVCGuJfRjPA/Y/FfRTqRJTd41UCS3w/CLKZx4GEElq6t
 BoTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lZ2eyLXB3h8ZfXKAaygQY4SpckOnfFI+3hgY0g/pxMU=;
 b=ThBv8GeS3bnP98mABKQP4esnj3u5rBI/FcsPo0Eq7g3oNdSYmZ+txw+5etBvJG/+5X
 vQWNWcRKO3S7TaDqMDSLm2+GGg3CavvwBss2KOBH6Vae5dZlxQVAYAiryZAxQyIHma3H
 02reQNGHF+LXIx5f0cuv6baNJ8tUA7cBboaxmd7qv55QQRL/fZLZ9ogRI2WM+x4pfcrl
 eMkrsxz7WgiEoFAsP8vIj7k1hOszE4cM6lHPuHu9QkL4f4qOnygJy7Etqi3Y/hin5kxy
 ldOyMtUzX4+QzQT9hNkaRo6SWtmUnY12Q4a0cpPUTYnyiPoxE25Za596d5SqRDtIQ/g+
 WQHg==
X-Gm-Message-State: APjAAAUmoQc2BPQJT0YioztQN7WZEzyAgTJ1tlnMhdhQBlbiON56z36S
 ccNnIZOeRpkxr8sUM/7LML1+og==
X-Google-Smtp-Source: APXvYqxhrBDLpeS2kBbHVbveU+ytUmGUDqHJDrIug4TanFYQl8rpjXWQ20nOWv4aJpFoPrGjTX9jCQ==
X-Received: by 2002:a17:902:59c9:: with SMTP id
 d9mr17319158plj.184.1575679827551; 
 Fri, 06 Dec 2019 16:50:27 -0800 (PST)
Received: from [192.168.1.188] ([66.219.217.145])
 by smtp.gmail.com with ESMTPSA id o15sm16895841pgf.2.2019.12.06.16.50.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2019 16:50:26 -0800 (PST)
Subject: Re: [GIT PULL] nvme updates for-5.5
To: Keith Busch <kbusch@kernel.org>
References: <20191206232838.GB2549@redsun51.ssa.fujisawa.hgst.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <72bab122-4b5c-aa4d-d258-b20d0fbd0926@kernel.dk>
Date: Fri, 6 Dec 2019 17:50:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191206232838.GB2549@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_165028_752155_C1536943 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 12/6/19 4:28 PM, Keith Busch wrote:
> Our second pull request ahead of the 5.5-rc.
> 
> The following changes since commit be2eca94d144e3ffed565c483a58ecc76a869c98:
> 
>   Merge tag 'for-linus-5.5-1' of git://github.com/cminyard/linux-ipmi (2019-11-25 21:41:48 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/nvme.git nvme/for-5.5
> 
> for you to fetch changes up to 7e4c6b9a5d22485acf009b3c3510a370f096dd54:
> 
>   nvme/pci: Fix read queue count (2019-12-07 02:52:47 +0900)
> 
> ----------------------------------------------------------------
> Edmund Nadolski (1):
>       nvme: else following return is not needed
> 
> Israel Rukshin (3):
>       nvme-rdma: Avoid preallocating big SGL for data
>       nvme-fc: Avoid preallocating big SGL for data
>       nvmet-loop: Avoid preallocating big SGL for data
> 
> James Smart (3):
>       nvme_fc: add module to ops template to allow module references
>       nvme: add error message on mismatching controller ids
>       nvme-fc: fix double-free scenarios on hw queues
> 
> Keith Busch (5):
>       nvme: Namepace identification descriptor list is optional
>       nvme/pci: Remove last_cq_head
>       nvme/pci: Fix write and poll queue types
>       nvme/pci Limit write queue sizes to possible cpus
>       nvme/pci: Fix read queue count
> 
>  drivers/nvme/host/core.c        |  6 ++++++
>  drivers/nvme/host/fc.c          | 40 +++++++++++++++++++++++++++++++---------
>  drivers/nvme/host/nvme.h        |  6 ++++++
>  drivers/nvme/host/pci.c         | 23 +++++++++--------------
>  drivers/nvme/host/rdma.c        | 10 +++++-----
>  drivers/nvme/target/fcloop.c    |  1 +
>  drivers/nvme/target/loop.c      |  8 ++++----
>  drivers/scsi/lpfc/lpfc_nvme.c   |  2 ++
>  drivers/scsi/qla2xxx/qla_nvme.c |  1 +
>  include/linux/nvme-fc-driver.h  |  4 ++++
>  10 files changed, 69 insertions(+), 32 deletions(-)

Pulled, thanks Keith.

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
