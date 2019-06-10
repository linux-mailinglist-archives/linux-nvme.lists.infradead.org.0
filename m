Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8763B8CB
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 18:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rc9jGDL/PQvXdzeAIlL/IR0R7OqVJyuE19Abeot4n7o=; b=Sd39MI6rRY886+
	pfHFnbm/RIOdTZv86bzVclNI3p40m20oHFQ+QaQQjovvlnppQ13hDpuDLA8o7FzCf4KAbNsrTodi/
	VnF42FDYt/lcGcOU2UblCGjImJ+UzjaabTuznsz9VzkyYcuLZeD63Cc1wVifsG+dLF+sCfZFkb6od
	Q/4J+qceD4iV+O9n41tucVxOHQ4pd7jrUQE9IwnRgFiITc4+rAljxnp3J3snPOw1i3U6QlFTNgoD1
	Lv3LniueFJbpcfEJvq9MTSQCPa9IJghz66WaqnaCrjanumI5paUuNlRKFXg0wOD5J1sklIoaH9T2Q
	QV+1YYMsHwQT0iwKIGDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMj2-0007EZ-Uz; Mon, 10 Jun 2019 16:00:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMix-0007DB-Tu
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 16:00:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id u8so8709640wmm.1
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 09:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MhW3IQp2kxp2WT1udPSFigogxSZG4DD8hbZhEXJzbNM=;
 b=JttkhtuJpnp8/3mKYAP9FX6ZEhZDtPhV1qxLZqEoyxaqTClzBbTE8mNvx6McK0tsLD
 ZjzW+6RwjnPV9k7+OJFsAC4PfgauIkhX+nIaU52boLtE7gurMr9oRzg/XlDAAiuDXnZ4
 L3aWan/PNGTkGgZgN5G7NQOYuQUrGwq/Ug5vIXr3vY9XT8aeZ8hSADGHjESGHcU3C8Il
 0Jode0lCd1Tvd3acp/lvM5u0IiR15nHpL9jeaXuauJDnKNDoj3UQv0xZVwG41KgFEw6/
 /DPjfLDp0f4JqdyBSAgfh54iPoomChh5uwItMcuUIdtu0JdlN691uphnutTSx/3U0ZYW
 STcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MhW3IQp2kxp2WT1udPSFigogxSZG4DD8hbZhEXJzbNM=;
 b=A4WkHM+2DvzKbolg168fEe6fPVBoVnHFRihmSmaDM8807d6FUwD5PMlHSwxWTuVc5M
 eYY7SJ5m6q+I3UaQoitYH0BPE7xKMZ+GIVpckP/sMXGrGjM6klc36zbtW8rZ0kuMnCar
 zivZFwtic80p5cOuxglXk7qlImAKvjiXbMf2bmNaWEmtLStEFkOHr+mUiKHjgRSzieBV
 tFfdT5bNluAbOpepiSoyihI/mmmClkLdx1GTnA1lSmRlZ/okugc/fCxhv48yS8Lojs0a
 mCLeRnupj2BbXVqceHBsMKnPmxDyGcLIsHwCcS4556AbUSAS5Uq1TzLR5uCC0GYAQFss
 IZFw==
X-Gm-Message-State: APjAAAVH6CXtfdDa9ZmBNVwSZP7outiRLVE0pIelmtadWwbLBSX4XaQ0
 36IQgYZGb3+Zefp1n8U5sW5vk8GfV45kzaYY0W4=
X-Google-Smtp-Source: APXvYqwP5gOmUVTPPKtavKrK8n/uGxVtTooANi2L7IbER7pYjep9UeDVtH2Tdsw9KlCt/brAB0JyQYC/SUM+Ayft/tI=
X-Received: by 2002:a1c:4484:: with SMTP id r126mr14508368wma.27.1560182441396; 
 Mon, 10 Jun 2019 09:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190610074456.2761-1-drake@endlessm.com>
In-Reply-To: <20190610074456.2761-1-drake@endlessm.com>
From: Keith Busch <keith.busch@gmail.com>
Date: Mon, 10 Jun 2019 10:00:30 -0600
Message-ID: <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
To: Daniel Drake <drake@endlessm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_090043_970152_E9458FA6 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pci@vger.kernel.org, linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <kbusch@kernel.org>, linux-ide@vger.kernel.org,
 bhelgaas@google.com, linux@endlessm.com, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 1:45 AM Daniel Drake <drake@endlessm.com> wrote:
> +       /* We don't support sharing MSI interrupts between these devices */
> +       nrdev->bus->bus_flags |= PCI_BUS_FLAGS_NO_MSI;

And this is a problem, isn't it? Since we don't have an option to open
the MSI implementation in RAID mode, your experience will be much
better to disable this mode when using Linux as per the current
recommendation rather than limping along with legacy IRQ.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
