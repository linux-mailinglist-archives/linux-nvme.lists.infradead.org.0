Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC36CE6F2
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 17:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPPe5xEgyQCJd3bX0u1EMIyT2gTTFx2i8kYA+HsHZas=; b=X2Q1yWu8DjgbG2
	H7ODJcjnSCODUgjuQ58oPFBYD9kCuj/+hFTjUgzv/SiTOY+W8aYqVa973LbrsHeKr9pMnnt8tZ0PC
	Rzf4sdUkXCHpk79yrVlVMNzd1FVBx/Kap5UXhjLpOUsV5sE/i5u8zqBYEiAcJ93tNiWGdZirTD6kR
	CNBK3Jk0qAayy2AT1Vo4WMIW9oA9pbk/NYbv/+2MfoDg9b604rhLVyKjS7VEF0ke7klCkMbkIwYcp
	ZtYVeIxEyOjikjH5l7JSzRNmDH9PzTxSVNRz5dGQsKvigoplT5b44T1uXREdN0Dglb4IG0qCckGuD
	yqqvLGio9gSB8DUrWHog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUgi-0006vh-55; Mon, 07 Oct 2019 15:12:40 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUgd-0006v4-SU
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 15:12:37 +0000
Received: by mail-io1-xd41.google.com with SMTP id n197so29279407iod.9
 for <linux-nvme@lists.infradead.org>; Mon, 07 Oct 2019 08:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eTNIlZe+EdZVGG81HeluEl5PY/3Uq8GfkNMqYYi6lVs=;
 b=Ne2oqzo3lM0h47eqjURdWmhmFSIBlEB3GBusCr3D8jHo6sLs1I7/m08oy+dzdA9/XS
 GWAe6rzF0lRZzxQLtZVaclX201QJOmnoXZszZXVvjpbTPD3G8O6olD0JGOx2MmhFMBhG
 GM9yPR0GbuBRHZCOozmrCcPvc6pCyc94A+VoFDbX1YRuiv031Jq8lktRhx76GQviLcEX
 IZna8p8GV54/VTQruw81XGihL45w0EaxvZo05/nn1QRRW6LgR9n+fEOMr9NSe4+P+IZl
 8XThJi1bYsa3IfwWQOXhaqq9WOMQWuldyVZPlasMst5S3vRSlPQ1i9pb7ZNH4NYW9FyO
 zZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eTNIlZe+EdZVGG81HeluEl5PY/3Uq8GfkNMqYYi6lVs=;
 b=UMXLLjKt0oi6VspUAm4R/NfgvSzh4s89Lb1jA70RbFhhz5vhJjE3r1rLlXF9v1tzeq
 wnqeHHIYGkaQK+3h6gIQDg0OoVgmhezKpiakYqbRmIELWxNFxP/ZYP+4rgZUSaNXkZt4
 FOJX6k7o2ixGqpgwzTrCOOykAs19GzduuRCXdYJM/5b7w6bsSXoe+fGaybV1FEyq9kNF
 2gUnf09X+Z3bpDpqYjaRT0m2VPM1zeA3bKVIXrv7JJHvYeQIZvprn0jkS8qjeJO2dz/m
 CrkPw7J0tyrSP6iF9Dr/vycwdeSjbTSqgyzgknaJrYybBuXQcuvnJPKg+WFJbbVuzMx7
 vwFQ==
X-Gm-Message-State: APjAAAXN4uZrGHR1qiLHqJ1GAhB+Vfr8cTFWRGvIgYWX+kZkBEQsP7/F
 HCR4Goa7Vh5zz5c6d05HSrC/La6ZWK6M+cWj7n0=
X-Google-Smtp-Source: APXvYqwjVvEIBF1oeHfIZ9hknNqCBGyZJX1ke0y4rqi7/ogm/ZY1CcjP6dK75kC/nVARrTJwndeMA/LIkiwi3HstniI=
X-Received: by 2002:a92:ce48:: with SMTP id a8mr28074054ilr.281.1570461153887; 
 Mon, 07 Oct 2019 08:12:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191003191354.GA4481@Serenity>
 <CAKcoMVC2LdcmUx6j5JzuT-TsFGz=mwQ0MsprrKR2qeXoTmQ-TQ@mail.gmail.com>
 <20191006192109.GA9983@keith-busch>
In-Reply-To: <20191006192109.GA9983@keith-busch>
From: Tyler Ramer <tyaramer@gmail.com>
Date: Mon, 7 Oct 2019 11:13:12 -0400
Message-ID: <CAKcoMVCDk+VDk6PSznTzMfJsjhZMdo6wBKZLzNbjDCkg73-WEw@mail.gmail.com>
Subject: Re: [PATCH] nvme-pci: Shutdown when removing dead controller
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_081235_921148_0577BB08 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tyaramer[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> Setting the shutdown to true is
> usually just to get the queues flushed, but the nvme_kill_queues() that
> we call accomplishes the same thing.

The intention of this patch was to clean up another location where
nvme_dev_disable()
is called with shutdown == false, but the device is being removed due
to a failure
condition, so it should be shutdown.

Perhaps though, given nvme_kill_queues() provides a subset of the
functionality of
nvme_dev_disable() with shutdown == true, we can just use
nvme_dev_disable() and
remove nvme_kill_queues()?

This will make nvme_remove_dead_ctrl() more in line with nvme_remove(),
nvme_shutdown(), etc.

- Tyler

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
