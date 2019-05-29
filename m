Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3912E0D3
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 17:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+43RTJsW1DOmDgq8r70HgLHty7/BUq6xv8zN6tR/2JE=; b=ZdHC+vD/R410Gf
	Te0PnEEwPqoUM9ioTUObnGjVMvE95x+urUxL/EqW/HwNfVgQMZMDR3ISgMriwMDVH1+bEJxc9xbkd
	L0zlJh1VyGlpIxthA6x14C6Q02U9Qbf/g7IPuvT8XUYeEFZWqvIxr9CVsgNozVis0c4ZpiF4KuY6v
	xlGZMRhS4piSXwQ2qn0WzJE6GEarx67oMOVGzSoYh+e5MRe9kCcdrm/z8PWHAPwEWTJWA1wiMcICF
	KDbp840+43Ta99FhHP3gKa3QQPsko8NuYypfsIErQmhgGh+gKPDG3sHubxDBFgemEYUh18JGTwaTj
	VKtEwmcH9LwoMnGwxbvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0Iw-0004fy-Uj; Wed, 29 May 2019 15:15:50 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0Iq-0004fB-Vd
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 15:15:46 +0000
Received: by mail-it1-x141.google.com with SMTP id i63so4156529ita.3
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 08:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H31zgO58wpBnjTWSvvZX4LJ60cNW8ttV54JvfVliyx8=;
 b=cwBKvYJWFV9qOVri6sdCS/gIOrIoep4TOKteOWF8Lgqi3B0BSMKnWIw9gw7BvBRC6W
 iZGW6/w+Ki5BTyKda+mmtOFZJEycQZOt8zRyxni2P1t2hQlp58aqZhCdvf/pngbeDr6h
 se5UzJjchCD1Yhg/lwXn/Lz8i+KYbICUK6CDy+rQQuaIST7cmwebdkK3KBdbcSuTa4/R
 0kUFS+PfabjU3vqY4JziUSpGf07xCDi1d/4vMC0gYIf43NtjRnx8Z4SPin4Kf/licMeN
 HRYAQMp6Thzw1PV7a35my3buuF3Wgjn2BTSLRXco3kD918bEbhVKjxjL7imDiNrNwgKs
 BKrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H31zgO58wpBnjTWSvvZX4LJ60cNW8ttV54JvfVliyx8=;
 b=GCsz1/tR9wssqR2aeFZiRGMxPHKh7Hc16gF/fHiATqd1fou32Bqm1LBDkRrcjWY3Eq
 3h84qzTndo2+gLm+KWSJ3JsELznAEZPJsyGBNIbkD0EClX6Qw8IiF5Kj+JuOK2/2Yj1V
 QJdZGas24wHHRzp5f+s3gDzt3N33G3AbcLe6sjWe0/EMMi4i0uRaSXig4DlgLgZ3cbJd
 tlX5EYXcR8nh10KyC1MBud//uVmg1VtON4COAdbzpPvhJd5r2vYxKH66s7xmivpneMyn
 P30hWCGTR4kGMKIWRA9MGYKFFQZDSOUEx6e0gyS6xZvVd/ljXmJPaUVqaFtOc665e8li
 jb9A==
X-Gm-Message-State: APjAAAXEt2nGmJrTxL524+eKGNgw0g91S3a6THK6ayDp41cyErhW1Rrl
 mEM3rM0E8hYzk9un2ALkQPGxTZpiRMqs/Q7Y1ro=
X-Google-Smtp-Source: APXvYqwwRFc0POaRKpSxeBQksSw3zN9XqzBP57ZGazgm1GdFhSuu0MekPbllz012JiMQspjsuN78Lu6+JMp4wXGq5Rg=
X-Received: by 2002:a24:df02:: with SMTP id r2mr6677713itg.97.1559142939004;
 Wed, 29 May 2019 08:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190527040159.3631-1-lizhongfs@gmail.com>
 <305425a3-a815-7842-85ec-eb4275d39780@grimberg.me>
In-Reply-To: <305425a3-a815-7842-85ec-eb4275d39780@grimberg.me>
From: Keith Busch <keith.busch@gmail.com>
Date: Wed, 29 May 2019 09:15:28 -0600
Message-ID: <CAOSXXT5g=6cH6f_jWtvymrAfhseY7GDNx0-NceujKSZFomeXyQ@mail.gmail.com>
Subject: Re: [RFC PATCH] nvme: allowing transition from NVME_CTRL_NEW to
 NVME_CTRL_DELETING
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_081545_013797_B38090CA 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, axboe@fb.com,
 Li Zhong <lizhongfs@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 2:01 PM Sagi Grimberg <sagi@grimberg.me> wrote:
> @@ -2759,7 +2760,7 @@ static int nvme_probe(struct pci_dev *pdev, const
> struct pci_device_id *id)
>          dev_info(dev->ctrl.device, "pci function %s\n",
> dev_name(&pdev->dev));
>
>          nvme_get_ctrl(&dev->ctrl);
> -       async_schedule(nvme_async_probe, dev);
> +       dev->async_probe = async_schedule(nvme_async_probe, dev);
>
>          return 0;
>
> @@ -2804,6 +2805,7 @@ static void nvme_remove(struct pci_dev *pdev)
>   {
>          struct nvme_dev *dev = pci_get_drvdata(pdev);
>
> +       async_synchronize_cookie(dev->async_probe);
>          nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
>          pci_set_drvdata(pdev, NULL);
> --

This would take extra long to recover from a hot-remove during the
initial probe reset. That path would normally unblock any lost IO
immediately, but would now be blocked on the async work. That may be
acceptable though, since it's just the initial reset that needs to
sync, and it will eventually unblock itself through the timeout
handler later.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
