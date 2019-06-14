Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF54346B84
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Jun 2019 23:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xppYzKIfgyuhGAzsHAo0ulnKnJgo5TYL+BAi4pT5Ly4=; b=JQUWjqnoJ5BcmP
	4EYm+ORZEBaBlUNT7HbrBSCDtwrWX5jgwEZZASA+seGD9UClXVAUCcQ1uefk8DbVuqxYXpGzk6V6v
	ODu+mugQZtVhgw59GoGYgX/AwsQYdoffFcweUXsSoKyeOTpnuiSpA13QHAqoM8aq4PW9D4aNLTBgA
	zsH1y8v4BfXO0Rd2CKHU/CyiPdc7u7WLxy7S78EhcTgj5I5IRJ8qHSl5GTOdNA3NUl+3/Uy4MM3Fp
	FoEALzKjyqI3NT0FyG29Xho/VD0F8kRGkOqlV13e6qBlUGOlkeNxZ+t2lEb/B7qrYEJvzHQrTLTA8
	GfumHmCO2QE7SXg3TJhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtOn-0005AQ-RR; Fri, 14 Jun 2019 21:06:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtOj-00059f-1a
 for linux-nvme@lists.infradead.org; Fri, 14 Jun 2019 21:06:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id 207so3668774wma.1
 for <linux-nvme@lists.infradead.org>; Fri, 14 Jun 2019 14:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DPcSNIgx5TQB75AvaXiiiaws52GQdyZ66nZ+SXlArN8=;
 b=bRAaJbL1YbxY3k5TEWvOkl16ahhZ0lyOJSdpwOu8Ec0fzzC3nu0E3Fm9iHUEF5XPmS
 DS9VT1UZl1j25XQPXN7S4D7VK/ricinAXA5vKXoBcHx8goV6qHojvelivqzS/GIS52tC
 vNm+KtjOq3CkxvK2mS1GRLc6pg8CAgH4ou770rnsoTG4XmhQi0v0TVJgd0qu7lft6I0R
 NYnDhwzriORtPTvRAvOvMI0Ykw6MNfZxADi54BU4fW/NDb85v8F6EoTx7dMje8RpxUtN
 8rqIsEKnlDgYFsgM5lneITnz+EGhLzQLEs3uqGfi0NNOGHpCB7K7Z7KvappYqBWKHrhG
 KUyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DPcSNIgx5TQB75AvaXiiiaws52GQdyZ66nZ+SXlArN8=;
 b=T5QtmU0xgboQX82eTA5WN25c8LgDSWVRizPWICzoEoW60QgTJMtzTsQIJSU6pax17A
 DU0kyBGuqLo6FmZ16wSq+ZptmlB1HgnlxQlZBCb+933lxOhJgcF4arfimfnoDuzvI3cy
 pnbD00tKMlehg/9LdPXYQF1KMLmLU7mCnsKLZ2ufrbW6YrRP42oEw7fIFIufMH7Zi8hp
 Cap7xuctJnbatNyKE/yw8ME5c3HM0ecAQQYVtT5GF7SE91hwVyHylwaHCiWDMGFTeNe/
 MudxcOvfygem8V5HX6GZyUE1y8vR/2aRfNU3VL7SfejGGoQrTA4M/ElEAkIU8rS8WLnA
 QWTQ==
X-Gm-Message-State: APjAAAVd47ezfDtzrTw8uzrk1Y2TeXrnSRczagK3iUivTb3ucKBqgWrf
 CZafySaiht9CpCU6u5TJvDh/2jpBaAnrBtNw9Bo=
X-Google-Smtp-Source: APXvYqw21c2Z9K0d6HZ6caycs44/rVWp72TRxRH2sy4lupkMiva0vgGmKu4Q+PHMd5s89bSXFyfyklP+4efUhSvzfj4=
X-Received: by 2002:a1c:4484:: with SMTP id r126mr9608340wma.27.1560546366802; 
 Fri, 14 Jun 2019 14:06:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
 <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
 <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
 <20190613085402.GC13442@lst.de>
 <CAD8Lp47Vu=w+Lj77_vL05JYV1WMog9WX3FHGE+TseFrhcLoTuA@mail.gmail.com>
 <CAOSXXT4Ba_6xRUyaQBxpq+zdG9_itXDhFJ5EFZPv3CQuJZKHzg@mail.gmail.com>
 <20190614200557.GS13533@google.com>
In-Reply-To: <20190614200557.GS13533@google.com>
From: Keith Busch <keith.busch@gmail.com>
Date: Fri, 14 Jun 2019 15:05:54 -0600
Message-ID: <CAOSXXT7eV4SBSkoKoOKAPaUQxczrD3rAvpz=12LTQenvRjCYRw@mail.gmail.com>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_140609_091834_1792FB58 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Linux PCI <linux-pci@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Daniel Drake <drake@endlessm.com>,
 linux-ide@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Linux Upstreaming Team <linux@endlessm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 2:06 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> Ugh.  Are you saying the installation instructions for Linux will say
> "change the BIOS setting to AHCI"?  That's an unpleasant user
> experience, especially if the installation fails if the user hasn't
> read the instructions.

:) That is essentially what the dmesg currently says when Linux
detects this, from drivers/ata/ahci.c:ahci_remap_check()

  "Switch your BIOS from RAID to AHCI mode to use them (remapped NVMe devices)"

Unpleasant yes, but what's the lesser of two evils? Recommend the
supported full featured mode, or try to support with degraded
capabilities?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
