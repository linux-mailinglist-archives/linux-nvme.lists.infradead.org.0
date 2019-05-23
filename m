Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAFA2837F
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 18:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8N1lKKTx57vFMPwsheUkhjeAxWwtHApJtDI13Uw63Gs=; b=LBlD2GowuF3E9X
	6HysX0t2nUsiHcNuXF74JHO0gG004shh/R9J2ffcDfXA2REsIuHS9sgP1Sat6o4ffGgrbZwDBVf8l
	Bvhc8TCx7l0QRvUNKd0OtSIcMIKipdCaQ2CsVndN3nSys3myysAk4nKxReKI2QQZA/JcR9SGffhWN
	voeKTNaFgWbWiLUjFrgDdNryB2uiEUSQDPFi8dwB7SviiinWhybMJJYi/XLKmjbrjKCLty3pKNv7B
	nj4ALISmTRqPITPBJgwyo+6juc+CnPwqbJHKgfh0U8OvbXkZ3dP3XOXk8kf/AmoT46CJ1e6796fF6
	MwXVhF/WWpyOzE9onr9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqZB-00089I-BU; Thu, 23 May 2019 16:27:41 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqZ5-00088Y-Fd
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 16:27:37 +0000
Received: by mail-it1-x144.google.com with SMTP id a186so881508itg.0
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 09:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Z1AqyTnzdmCAVX53fYPhuDnATzmKva5sQJIPFl+8IMw=;
 b=ndw1svlbeK8qWBU2ufjbAVMoAbKDCYRT8ZO8VSRRUIbWAXTRLOBK2i1ArOAf7ER45C
 tn7oUYguMX3k7Qn0B8qYrLXdu9zPz3EOlQ08HjDrczCejyDfsqUg1LWEzFsujxI5spNB
 U45d6DMXa68k3pnYujJkklHk8phTbRrPe4IF1GC1vSAM0UhgIABI5S0RUeKy2fc5qKUU
 PkjlHu/o/z9pq4d43VdlWPqy7H74v2NTnZ6flX9hynL7Bvpr+fKWBoreTXst9dhLQ+Lv
 CbrnE+n1vDp4o8D+EVr4gn48iggKbss8VSeNtxuF0KiyHM6Qh+PyUqj3zdziW3zlDHq7
 tU3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Z1AqyTnzdmCAVX53fYPhuDnATzmKva5sQJIPFl+8IMw=;
 b=qo73xihALe7FMdPIh3rbfozU5Q+0qIm0wS+zWRrXrOchxh7dJmw1kETsMMSUz1TFCL
 JWlOVh5mWssppHOJhh8fs+wuVLN9q51Bzq9KfIoMVZ0QL4qcKOZcUGo9A03iPZy7QSQV
 XoEB/FBfbUvcsejcj3H+702xD1CUAOhqiL2Zlf+l3Q8VvbNw0wUDA1Yk4EUoqzXJeUEW
 9IBrTXXtHaeNPBnNSMO4HrjKal/qpd2siHeCHo75uzKFPpL9xubqQQyc7D8CqApQ6ahO
 PePxjitfPQZxXFBjDBLTcBlqkDh+2D8C9nsGhBWV+3/nAEcLh0/Ek1H5dWWup/oO6zHC
 WzNA==
X-Gm-Message-State: APjAAAVtHT2aCDx7C/t6lur5y3Ite7+vjKLyYhPy86MrDLTNQk5kacVv
 dVQnSzzy9aXwLJKNYfTBk2eIO+OkJkDmBQ==
X-Google-Smtp-Source: APXvYqwVVrI4+D87RWiCHd8AWMVIEsvp0s8EL6pFOFxIWMDzR5L8H6ph7ZTVRAPt0dS39GojxVoezA==
X-Received: by 2002:a24:53c4:: with SMTP id
 n187mr14457436itb.167.1558628853289; 
 Thu, 23 May 2019 09:27:33 -0700 (PDT)
Received: from [192.168.1.158] ([216.160.245.98])
 by smtp.gmail.com with ESMTPSA id 74sm5107296itk.3.2019.05.23.09.27.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 09:27:31 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.2-rc2
To: Keith Busch <kbusch@kernel.org>
References: <20190523161423.GD14943@localhost.localdomain>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <8ff0f44c-ce49-e39f-aa45-e45ff8e5efb0@kernel.dk>
Date: Thu, 23 May 2019 10:27:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523161423.GD14943@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_092735_570546_7160C51F 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Cc: keith.busch@intel.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/23/19 10:14 AM, Keith Busch wrote:
> Mostly fixes we'd like included ahead of the next rc.
> 
> The only non-fix is an update to the MAINTAINERS file to point to my
> kernel.org account. This is preferred to receive communication as most
> nvme development/maintenance is on my own time anyway. I will also be
> starting extended vacation after tomorrow, but would like to still keep
> a finger on the nvme pulse.
> 
> The following changes since commit a6a4b66bd8f41922c543f7a820c66ed59c25995e:
> 
>    Merge tag 'for-linus-20190516' of git://git.kernel.dk/linux-block (2019-05-16 19:10:37 -0700)
> 
> are available in the Git repository at:
> 
>    git://git.infradead.org/nvme.git nvme-5.2-rc2
> 
> for you to fetch changes up to cb9e0e5006064a807b5d722c7e3c42f307193792:
> 
>    nvme-pci: use blk-mq mapping for unmanaged irqs (2019-05-22 10:11:36 -0600)
> 
> ----------------------------------------------------------------
> Christoph Hellwig (4):
>        nvme: fix srcu locking on error return in nvme_get_ns_from_disk
>        nvme: remove the ifdef around nvme_nvm_ioctl
>        nvme: merge nvme_ns_ioctl into nvme_ioctl
>        nvme: release namespace SRCU protection before performing controller ioctls
> 
> Keith Busch (7):
>        nvme-pci: Fix controller freeze wait disabling
>        nvme-pci: Don't disable on timeout in reset state
>        nvme-pci: Unblock reset_work on IO failure
>        nvme-pci: Sync queues on reset
>        nvme: Fix known effects
>        nvme: update MAINTAINERS
>        nvme-pci: use blk-mq mapping for unmanaged irqs
> 
> Laine Walker-Avina (1):
>        nvme: copy MTFA field from identify controller
> 
> Yufen Yu (1):
>        nvme: fix memory leak for power latency tolerance
> 
>   MAINTAINERS              |  2 +-
>   drivers/nvme/host/core.c | 89 +++++++++++++++++++++++++++++++++---------------
>   drivers/nvme/host/nvme.h |  1 +
>   drivers/nvme/host/pci.c  | 27 ++++++++-------
>   4 files changed, 77 insertions(+), 42 deletions(-)

Pulled, thanks Keith.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
