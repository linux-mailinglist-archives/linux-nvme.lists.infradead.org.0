Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD0B6083D
	for <lists+linux-nvme@lfdr.de>; Fri,  5 Jul 2019 16:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vqnIrrkbdpt47Ny8ENgiDL+APmRNhTcHI6Ij+wm+pQ=; b=ppeD1hpefskXbr
	1LXkNWuZwl6fgh1yiSoD/HUAI2So6aE4ZGX9Xh5U/P/2g7+d2fianY8RI0uvfBQbM0y0EbXwHXtoe
	G3peMlwLntFyUDvL3/UsupoxZ8yAGcuELMkVMQF2hYmGsCHtKrOBF1JYRXG2gCXLezgoYOAU8aQ5J
	WsMreNgQ+osLYyXc4wjWCi6EXbCQiNWQRn9WVKxVgpSXhCskzx7uQ/9uVczxBNKqMWAM+KnJUCXHb
	+mL2Bg9YTI+5u2zqERoepggV24eH1vJxRoMN+Imkm7Bi4JaQXUeJKSxFFYdvKR0P8FofkvuFIL/Rn
	i3jYWsgNLNZ0qyMoWuyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPUS-0002L7-DD; Fri, 05 Jul 2019 14:47:08 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPRe-0006F8-Tq
 for linux-nvme@bombadil.infradead.org; Fri, 05 Jul 2019 14:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=88F0TT2/tG/uYyfWXjssEK7KTkmg635UzXMmOcEz6oU=; b=YxTyDhS66CdylSvzPzC7ZuAEu
 sp+O7+YmRCZOY/mymSkf43nJPM5bcwwBtoGR1vd7gMAQ++pji9nTCVNiWeyp0wUf742NRZIdPUuOa
 nza8DwShY/4Qd8WAhnlWhRrPUxi3wbfXKuG4x7J+3+KQx7AAUg2Um5VYzP+X/XzlzEPKVdlGRLZ14
 rh5Z5taApUXmAsi+YDBMCQDjtwzyalNxUMLLLDhRXF5KMczRffMMkgGmn3tBsSGC3kKJbaRIPp6y8
 VfO+cArBYq/h1t9XMOIlH5Omwwv28oSFuoAWq19UjlB5aMUL7exWY6qGBa0LMChztntB9JwFEK00c
 UtPx32zrQ==;
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJJf-0000PE-Go
 for linux-nvme@lists.infradead.org; Fri, 05 Jul 2019 08:11:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id r7so3979315pfl.3
 for <linux-nvme@lists.infradead.org>; Fri, 05 Jul 2019 01:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=88F0TT2/tG/uYyfWXjssEK7KTkmg635UzXMmOcEz6oU=;
 b=MYdf3WLHjq66FOPyHjvBc0l6y/zji/AEZ1mmiumXQyM31SyQpc69FD7uT7lEFlHATb
 lbqHIzvik7BLE09DIhDF894QmgJaCSU+48PLgizcf95IT75k6Zcf3MB27C6KCGpTNEcq
 Mar1wOn/AM+uqCBJag19IaXZvZvPSoCYdYkJHXpYcOqsRIqQBInMe5DU/ZjW7TXxjTbx
 90Vx5G4ZDk+o015DbVI+5DMelE9zYgscIrmpmoCO5/+I0Om/XhHJak7Aj2EAP7R1i/hg
 ZO355nK8Hlp+qEKZELxjYPqEZ+Oq+2cCoy38C2K/lOt/ErLXUI9V+U1uEhTn72m3kR5m
 QSnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=88F0TT2/tG/uYyfWXjssEK7KTkmg635UzXMmOcEz6oU=;
 b=InRc9c/iYGkrcCuukdYUdXcnWYjUUjycF8LbNmtyqM3tlcMZqPCtbbs/YPH8fCMSJt
 egRJ8H9+8f/GWv/PP9z7oLY9kvrPXQQQVNaXz1KXbnXzpMlKK8GC4gpWs+sWXpJGfYlb
 5zEXExr8oREBRUOmF4UFv24IyD6/YxCQaqCRdIgfM1fONJ6/8OoobVYy7wVWP7VXH7lW
 y/mswccmomaPUVKd1qkcJwuaqznxknztlDnjX2E6djotwo2GH/GssOtoCvoi28xm2dM/
 zxNZBaDiqzaVq6G4LAC8QAMamQfb91wColTPZHI+bA7yR/LqoaslnvhHmIVSI7v7sL/Y
 ApTg==
X-Gm-Message-State: APjAAAXus6P0bvE1P5azub5fdcaWB3MU3ao6Fxb9/gVR/bHcnBy3Dya8
 Ilwrc5EWVuhyofeqEgHOEkA=
X-Google-Smtp-Source: APXvYqzY0a24urIp8N/e8MJXkFnOntDpHHQCjxIKSWQmeuTX+Xyj0BSWXA1iTf6GzXpSp1EQ5uHklg==
X-Received: by 2002:a63:79ca:: with SMTP id u193mr3698327pgc.91.1562314170281; 
 Fri, 05 Jul 2019 01:09:30 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g66sm8170219pfb.44.2019.07.05.01.09.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 05 Jul 2019 01:09:29 -0700 (PDT)
Date: Fri, 5 Jul 2019 17:09:26 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Tom Wu <tomwu@mellanox.com>
Subject: Re: [PATCH] nvme: add delete completion and submission queue to
 admin cmds tracer
Message-ID: <20190705080926.GA13653@minwoo-desktop>
References: <1562235594-7847-1-git-send-email-tomwu@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562235594-7847-1-git-send-email-tomwu@mellanox.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: sagi@grimberg.me, Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, keith.busch@intel.com,
 Shlomi Nimrodi <shlomin@mellanox.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Max Gurtovoy <maxg@mellanox.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-04 10:19:54, Tom Wu wrote:
> The trace log for 'delete I/O submission queue' and 'delete I/O
> completion queue' command will look like as below:
> 
> kworker/u49:1-3438  [003] ....  6693.070865: nvme_setup_cmd: nvme0: qid=0, cmdid=11, nsid=0, flags=0x0, meta=0x0, cmd=(nvme_admin_delete_sq sqid=1)
> kworker/u49:1-3438  [003] ....  6693.071171: nvme_setup_cmd: nvme0: qid=0, cmdid=8, nsid=0, flags=0x0, meta=0x0, cmd=(nvme_admin_delete_cq cqid=24)
> 
> Signed-off-by: Tom Wu <tomwu@mellanox.com>
> Reviewed-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
