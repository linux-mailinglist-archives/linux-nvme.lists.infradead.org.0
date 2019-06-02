Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A32632280
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 09:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18tI2J3kzXcEzC2wTnGC6L/Dh4XAVf+8xBaXKleVmRg=; b=k3JRREKKFCHG8K
	TNSjNMglQ6HId5sBNfi0Lp1u+HfJZkXUdr32xONxni2ue7N2QMFi1REkF3foZ5vkgiHDzuOsaISke
	4eT+lykuNBYFqXBqmE73JaOJzI+snuvwOzt9sXhjwMNBziQct+6OQNbiptONGqUvaZ6+QJgyvk1vf
	wkxn6dZdW695TX/LgTnd0KPEYwCou5hgVaYKoQ1Dcm/TNdIOLdSUJYkdrHGaXKl553nGvgk4erJQZ
	k+fTeD2CB/+2fYpnfcfMR/tp55i1RmakWsTnax7mFfMx+5cyrWGGjSQaSeRp2YNJ+3WkBL6MdFHXA
	KINiFqXdM8qZVGaiXqeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXL7K-0005Vy-7z; Sun, 02 Jun 2019 07:41:22 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXL78-0005PG-HN
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 07:41:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id cl9so613130plb.10
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 00:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=no6cosb1ZdNxurZNUaEe8ewbLsaPUDS61JVYq8jG9Ew=;
 b=GH+RnrVQNCIulbtqQuRL8bdMvBJnTd9tw9eCt/ZBx/pQlg33ip1KgIBBBqqUGW0XGY
 hc+Ur6XgnzwMEgiek/Fd0Z+XNa+Jt5fxWzXQ3q55aEa4Ck1ba01yY5We9N04tvCh/vht
 dNoXfv8osEODd7KGo6KAmg6O5TeGymhAC+kTMSN92fyD07cdnZPXXP9Oel073jRUEpBo
 HznVYBmOx8vB+M7S7MAcp/ZDZ+Wd1iyFNevLL2FyJcEFcHnTQdM/MKFl6hh4hbtALRTd
 A0VUxYcuKoDwdkRXfdnQa362vg1mBifobcsccDoyFq5oZr5kxdmSVvV+dZM+089MtlhQ
 BX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=no6cosb1ZdNxurZNUaEe8ewbLsaPUDS61JVYq8jG9Ew=;
 b=hLjQmxm+84VxHaNMmrl0rYiCHfOyDOicDCp1rgiEVU6YNxt6OskFoYO7cXQ54jihqI
 92AcVy50qsvBVTMEKlJKpuRAHmIVo3dKJk3V3M1H0QeHzLw0gL5ZQV9TKOlB70fMF9EC
 I5CNtvQyI7Lu2ttHFLYVr6l4C0TKCrSKvWhPuQxj/5MtTDn+QrKiuBQDdB+Q365YCwGl
 ClbZQg58TwkYk7nBGLa3C9VxPn0x/M2t6uCMcFd1l8OM6PYlhWBam6/oHmAwYO2BXSeX
 muL3xnJ0ggqc1ZE/PlTzvYsIzhApL0PN5uW7kIpzml4fDpBezlF/0ICVhqgvscznWpXh
 VNvQ==
X-Gm-Message-State: APjAAAVX7dF6bdDaQN4R2UNhJZiu1uhIWnSoHAcRaTAOrVERiLl1/F5A
 BIahZOtaAKf2uNBC2wkeB1PZDDWta44=
X-Google-Smtp-Source: APXvYqy8CKy2t8MGv9LzkypXGmOsA6DYdANNq/Ewob4zFrPoh2N4R9Rj3RWmepkO+DQweZjjTx1Yrw==
X-Received: by 2002:a17:902:6b07:: with SMTP id
 o7mr1378933plk.180.1559461269978; 
 Sun, 02 Jun 2019 00:41:09 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id n127sm8793557pga.57.2019.06.02.00.41.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 02 Jun 2019 00:41:09 -0700 (PDT)
Date: Sun, 2 Jun 2019 16:41:06 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvmet: fix data_len to 0 for bdev-backed write_zeroes
Message-ID: <20190602074103.GA15902@minwooim-desktop>
References: <20190602034339.11246-1-minwoo.im.dev@gmail.com>
 <69cfebd4-1e32-b86e-b02d-a92566f9d2db@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69cfebd4-1e32-b86e-b02d-a92566f9d2db@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_004110_660406_2E57A889 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-02 00:32:43, Sagi Grimberg wrote:
> Is this a regression? IIRC write-zeros used to work...

Hi Sagi,

The following outputs are a looping basic tests with a single command:
(I think you can find the commands will easily be failed.)

root@target:~# nvme list-subsys
nvme-subsys0 - NQN=nqn.2014.08.org.nvmexpress:80861af4foo
QEMU NVMe Ctrl
\
 +- nvme0 pcie 0000:00:04.0 live
 nvme-subsys1 - NQN=test
 \
  +- nvme1 loop  live
root@target:~# nvme write-zeroes /dev/nvme1n1
NVME Write Zeroes Success
root@target:~# nvme write-zeroes /dev/nvme1n1
NVME Write Zeroes Success
root@target:~# nvme write-zeroes /dev/nvme1n1
NVME Write Zeroes Success
root@target:~# nvme write-zeroes /dev/nvme1n1
NVMe status: Unknown(0x600f)
root@target:~# nvme write-zeroes /dev/nvme1n1
NVME Write Zeroes Success
root@target:~#

The write-zeroes command has been requested with SLBA 0 and NLB 0 as a
default options.  This might happen with status code 0x600f which is
NVME_SC_SGL_INVALID_DATA | NVME_SC_DNR which happened due to:
	req->data_len != req->transfer_len

The transfer_len is always 0x0 for write-zeroes, but data-len is never
initialized in this case.

Please correct me if I'm wrong here.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
