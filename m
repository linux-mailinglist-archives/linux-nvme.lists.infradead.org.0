Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9461CFD58
	for <lists+linux-nvme@lfdr.de>; Tue, 12 May 2020 20:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKqx39fLSJd9CkyYxJHZMn7/bEagfv9fbf4x2/P+QtM=; b=Mpi/wCmkn6IQQb
	HsKEectYNNcb81ipG6D2XpL1iXfDvN2da3Q7fG7nMXkSpLOCfQvgU0+rIAEOyjhzXD+kgHmo1OLQJ
	XK9+XKZYcCxa2IoMnjfjAz1LrqJCGiTpG/0hncQlOUI4y4Y8zK5KiyKcDfXZ3dQq+P7aUkuROBn+k
	XhdC++IAYKYRissF5hLPEXJtcLzahO7OhdD3j3Q1mKjokAOUgW3ScNHzpIKA+4w5GbCkjpDy09IUl
	vkx7DU52tVDrTK43EE7CuGxsYZGezcYBigxxXoa9pBt+PGMow+RgXOXfAuSl9+DYPEF9SQlBhJJ8f
	mkz4EYZtuNQS62/X4iAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZig-00036x-S3; Tue, 12 May 2020 18:33:34 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYZib-00036D-On
 for linux-nvme@lists.infradead.org; Tue, 12 May 2020 18:33:31 +0000
Received: by mail-qk1-x731.google.com with SMTP id a136so5749073qkg.6
 for <linux-nvme@lists.infradead.org>; Tue, 12 May 2020 11:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SUfv84ccDyg5jzKpqgHg/sqrivuTj2vep3nB4pPDw0U=;
 b=Sje2XRfrqQX6wJchCi8trFp/D//Hm/gl9ZmNOFd3lWomsH+W+iwJX0wmRXMuXLpASh
 8FJM8Rs4QcyWo5rantH/U/ZTaU/js3YQ1w0cyps673wzOTT3Iqspgpwus3TTPLpHME1K
 upoJ67Fgj4WAvxBVxgfSB3eD+7uU4cIDiYd+bFi8XKzxzRgD4CPt4DkRLz322X+U/YpK
 EJTrS9EXoeLVSr1OQZLr6WrcAexzajncMy1HuRW3tw0WO163cGv7L5qcH3mXCY1MvU3A
 AeLGSbVld4p8XSjSTWOyyuptiQ6TmnOIABOLBHUBvlTGri3Lfqfz9Ov3ybuLg190gio+
 hiew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SUfv84ccDyg5jzKpqgHg/sqrivuTj2vep3nB4pPDw0U=;
 b=j8U3HZgPjXApkg5hCee/BXIJJkRGA1pyNLAFDnPGA1r3/ZPYiAM6XYaMnMrTE2AMaq
 9M16AcF9+aNtvc3BLmRJKomN5TxyhkzRq1Wxp/4lej1RiNAuzCeGWwQ35fRsd5R4/TR7
 Sl3FSvpi1VROohVa8T14LirXNmTAtBAnUBfWVYUh6oJpQfc607rKcc7Yr2+Ba2DbdBsm
 bhLpP9jXPOmXhv/5EBrF5hvi6QVCx5CjlgX93l5twQFFOWC9SpqETIQ2hiVbtGylzxwk
 uf+uHRMjCF/+1yMUtUBbwA1tis7vqiA25QTpyRRahqeGzXBtrdEh0oC4UQjvX0q0Y6OW
 tuZA==
X-Gm-Message-State: AGi0Puby3tl2luSrlOj1XYhQ6oHvS0jdAK7xbWuQgKLYbGxyvjnmpROw
 jGVM+L5tY4KbhYCCdLbnIwX7OzF+PFKliZZBnwE3yg==
X-Google-Smtp-Source: APiQypJY2Fh47Q8nw38+l8pvTKvF+ynG6KwgbueF9Nf+/TyQp7jnNpUntKIAQWIdt9dVKrA58xDAefOqQ1B27I3uAaE=
X-Received: by 2002:a05:620a:13c6:: with SMTP id
 g6mr21859461qkl.453.1589308406971; 
 Tue, 12 May 2020 11:33:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAGkZ3m9UE_T2RDM=TLTERopuA+AjHenH_9AkTYF8f5R52W5_FQ@mail.gmail.com>
 <CGME20200512092744epcas2p26a9b41de4da7f44c507cabd85919f4bf@epcms2p1>
 <20200512093828epcms2p49d1f8de8cfd77c6edff7cde47113896c@epcms2p4>
 <20200512094651epcms2p1afe65ce9247f92dfffc0e1f755a68405@epcms2p1>
In-Reply-To: <20200512094651epcms2p1afe65ce9247f92dfffc0e1f755a68405@epcms2p1>
From: Peter Walker <peter.walker9520@gmail.com>
Date: Tue, 12 May 2020 20:33:15 +0200
Message-ID: <CAGkZ3m-f4mrDhgdu8zy9kobd04nUCKOKYv9zBQAO48Hw6GU+Ow@mail.gmail.com>
Subject: Re: Problems in Samsung PM1733 SRIOV
To: rajend.singh@samsung.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_113329_806662_B97956E2 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:731 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [peter.walker9520[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peter.walker9520[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Rajendra,

Thank you for the help.
PM1733 is working now with SRIOV.

Thanks,
Peter

On Tue, May 12, 2020 at 11:46 AM Rajendra Singh
<rajend.singh@samsung.com> wrote:
>
> Hi Peter,
>
> PM1733 supports Virtualization Management as described in NVMe spec  (8.5 Virtualization Enhancements (Optional)).
> Hence to be able to use Virtual Fuction NVMe controllers you will first have to assign resources to the controller and then make the controller online. You can use nvme cli to send virtualization management commands.
>
> steps:
> 1) echo 0 > /sys/bus/pci/device/${bdf_pf}/sriov_drivers_autoprobe
> 2) echo${bdf_vf} > /sys/bus/pci/drivers/nvme/unbind
> 3) echo 3 > /sys/bus/pci/devices/${bdf_pf}/sriov_numvfs
> 4) nvme admin-passthru/dev/nvme0 --opcode=0x1C --cdw10=0x10008 --cdw11=2
> 5) nvme admin-passthru/dev/nvme0 --opcode=0x1C --cdw10=0x10108 --cdw11=2
> 6) echo 1 > /sys/bus/pci/devices/${bdf_vf}/reset
> 7) nvme admin-passthru/dev/nvme0 --opcode=0x1C --cdw10=0x10009 --cdw11=0
> 8) echo 1 > /sys/bus/pci/device/${bdf_pf}/sriov_drivers_autoprobe
> 9) echo${bdf_vf} > /sys/bus/pci/drivers/nvme/bind
>
> Hope this helps !
>
> Thanks,
> ::Rajendra;
>
>
> --------- Original Message ---------
> Sender : Peter Walker <peter.walker9520@gmail.com>
> Date : 2020-05-12 18:27 (GMT+9)
> Title : Problems in Samsung PM1733 SRIOV
>
> Hello All,
>
> I am using Samsung PM1733 and testing the SRIOV feature of the device.
> There were some problems while enabling VFs.
>
> dmesg logs while booting system are as follows:
>
> # dmesg | grep nvme
> [    1.471488] nvme nvme0: pci function 0000:2d:00.0
> [    1.685264] nvme nvme0: Shutdown timeout set to 10 seconds
> [    1.694565] nvme nvme0: 8/0/0 default/read/poll queues
> [    1.695383] nvme0n1: detected capacity change from 0 to
> 214748364800
>
> # dmesg | grep "0000:2d:00.0"
> [    0.326083] pci 0000:2d:00.0: [144d:a824] type 00 class 0x010802
> [    0.326105] pci 0000:2d:00.0: reg 0x10: [mem 0xe1000000-0xe1007fff 64bit]
> [    0.326134] pci 0000:2d:00.0: reg 0x30: [mem 0xffff0000-0xffffffff
> pref]
> [    0.326368] pci 0000:2d:00.0: reg 0x20c: [mem 0x00000000-0x00007fff
> 64bit]
> [    0.326370] pci 0000:2d:00.0: VF(n) BAR0 space: [mem
> 0x00000000-0x000fffff 64bit] (contains BAR0 for 32 VFs)
> [    0.326517] pci 0000:2d:00.0: 31.504 Gb/s available PCIe bandwidth,
> limited by 8 GT/s x4 link at 0000:2c:00.0 (capable of 63.012 Gb/s with
> 16 GT/s x4 link)
> [    0.348295] pci 0000:2d:00.0: can't claim BAR 6 [mem
> 0xffff0000-0xffffffff pref]: no compatible bridge window
> [    0.348542] pci 0000:2d:00.0: BAR 6: assigned [mem
> 0xe1010000-0xe101ffff pref]
> [    0.348545] pci 0000:2d:00.0: BAR 7: no space for [mem size 0x00100000 64bit]
> [    0.348546] pci 0000:2d:00.0: BAR 7: failed to assign [mem size
> 0x00100000 64bit]
> [    0.348581] pci 0000:2d:00.0: BAR 6: assigned [mem
> 0xe1200000-0xe120ffff pref]
> [    0.348583] pci 0000:2d:00.0: BAR 0: assigned [mem
> 0xe1210000-0xe1217fff 64bit]
> [    0.348590] pci 0000:2d:00.0: BAR 7: assigned [mem
> 0xe1218000-0xe1317fff 64bit]
> [    0.490257] pci 0000:2d:00.0: Adding to iommu group 36
> [    1.471488] nvme nvme0: pci function 0000:2d:00.0
>
>
> Then I am enabling VFs with the below command:
>
> # echo 3 > /sys/bus/pci/devices/0000\:2d\:00.0/sriov_numvfs
>
> Then, the kernel tries to initialize the 3 new nvme VF devices (i.e.,
> /dev/nvme1, /dev/nvm2 and /dev/nvme3).
> However, initialization aborted with the below message.
>
> # dmesg
> [  200.776161] pci 0000:2d:00.1: [144d:a824] type 00 class 0x010802
> [  200.776785] pci 0000:2d:00.1: Adding to iommu group 37
> [  200.777073] nvme nvme1: pci function 0000:2d:00.1
> [  200.777149] nvme 0000:2d:00.1: enabling device (0000 -> 0002)
> [  200.777204] pci 0000:2d:00.2: [144d:a824] type 00 class 0x010802
> [  200.778805] pci 0000:2d:00.2: Adding to iommu group 38
> [  200.779193] nvme nvme2: pci function 0000:2d:00.2
> [  200.779224] nvme 0000:2d:00.2: enabling device (0000 -> 0002)
> [  200.779284] pci 0000:2d:00.3: [144d:a824] type 00 class 0x010802
> [  200.780146] pci 0000:2d:00.3: Adding to iommu group 39
> [  200.780430] nvme nvme3: pci function 0000:2d:00.3
> [  200.780460] nvme 0000:2d:00.3: enabling device (0000 -> 0002)
> [  231.336804] nvme nvme1: Device not ready; aborting initialisation
> [  231.336807] nvme nvme2: Device not ready; aborting initialisation
> [  231.336812] nvme nvme2: Removing after probe failure status: -19
> [  231.336828] nvme nvme1: Removing after probe failure status: -19
> [  231.344759] nvme nvme3: Device not ready; aborting initialisation
> [  231.344778] nvme nvme3: Removing after probe failure status: -19
>
> Please let me know if I am missing something while enabling VFs here.
>
> Thanks,
> Peter
>
> _______________________________________________
> linux-nvme mailing list
> linux-nvme@lists.infradead.org
> https://protect2.fireeye.com/url?k=80d23016-dd0238da-80d3bb59-000babff3793-6c678424a2515ee1&q=1&u=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Flinux-nvme
>
>
>
>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
