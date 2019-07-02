Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710075CE62
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jul 2019 13:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHEPNYHOLqtPgYciJmSYkwurulrZ0LSsGi0VHgUkQZ0=; b=ecJPR9xeCH6bwa
	N1C8MjQDKBhszBJB5LXDan4RL7mjteNnpasoc+dOBJRzMCDBofF5nSDI5QQ8NaNdyOgW/UXMSaSLr
	vw7gO2xHLLYzaLygHr8PXVTjpJ5tOMzTXeR5+t4aTc/cpwpRrr5IGqYa3WYemELfmH6jFfqR4LkXS
	4mZDZArbQYL5Mzuu4c8jz3rdS1tG+bz80wT+3ql1qyRGLzdGegYWetUX1oO5G+yUWyL21EdjBPd86
	xipgCQBgnSWOvDZ1yXMPI4SHdBQ9NokZgSGOQn7nAtkpjuzEtVF1GeSjUoO8n1jNZ/n8Lc+Eu9u0v
	IAdsBeEAmhqPtvFS63Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGwk-0007bh-6G; Tue, 02 Jul 2019 11:27:38 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGwW-0007bL-TR
 for linux-nvme@lists.infradead.org; Tue, 02 Jul 2019 11:27:26 +0000
Received: by mail-wm1-x32d.google.com with SMTP id v19so577561wmj.5
 for <linux-nvme@lists.infradead.org>; Tue, 02 Jul 2019 04:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3NU39oIWgyThMUq3bj4rLzvLKupYbs/uBsYtaCyKpAA=;
 b=DBeFBoZz5YuW7Eq4LlM3r0sne0VJP3oxph5HYaZvvGYRGGzQNtIh1dwT2Q7JhSSmOE
 N25AdmA7JDjOap1IaG51uTUEAR2r/1Oju/BVdx3hTHfw7i4lZxo2NpSVAml3x134KH+0
 Q+SnTa/qXU/iXPu8/ZR2YWN8paZeb1WAiBlbgHtCFlmlHO9wjFN1HVqiuCvWVu862ngi
 NOQCD1FKwWGqMMmS9HjOPWNacZfY6JcVZgxdSycwrbdwPTKZjLTf0I+kIw/TgoWTpEB8
 DrnXpQHXqZ3XxFMxORmyhSFKbtZqTX7KEEoOtW75j0SG5Dyqn72Dzo3lnL5CCNnrBGTG
 wwPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3NU39oIWgyThMUq3bj4rLzvLKupYbs/uBsYtaCyKpAA=;
 b=WpO5T0eqZ1jUd1Dia5D5RZqW9K2ITnC21b0CTLMY9axfprgro82V6o4o0Mt3Kte1DM
 ebt1cy1MsNzqPMq4NSobb5fiJcVUGyM8D4C8t2uD347p/41O5/JlM7agJU4RGfu5JBj7
 nkQUd/gXONRcGZPDAS69lE4RHOI43By78Y9vglpiOX2Gpr+5TdxceSkBclGysTgHCR21
 vd6+TOeM7Y0iSmhfsb4OmUrTBMBqJMQKETGd+3sFpLNkZzdg5fG5QwN6UISUlnsHvCio
 2/FVKX1BFW8MnSxATUaxSb1sepm38qTNa7k9cH8K6XbAfkir/TpXGV+ktx10t3LPBOhj
 0pUA==
X-Gm-Message-State: APjAAAVJNM0UFdneWZl8cO1lRE7KhBY2A05TfP8srKp0uAJf7XB1slib
 IztGBDh/spqeK1S0L+bGUOvVwtIcezWZbQR+dsg=
X-Google-Smtp-Source: APXvYqwJDoiCMI8HN3wAJw+2JRGHuyxvxQZvMoDNWvaZaxB/mXQyh1dKRw71ZLiwrqTaNn51lxoRE/p9+oacrYuHYVM=
X-Received: by 2002:a1c:4484:: with SMTP id r126mr3266586wma.27.1562066842792; 
 Tue, 02 Jul 2019 04:27:22 -0700 (PDT)
MIME-Version: 1.0
References: <79f17609-5b3d-0d29-1642-c9ce30beb7f9@bio.ifi.lmu.de>
In-Reply-To: <79f17609-5b3d-0d29-1642-c9ce30beb7f9@bio.ifi.lmu.de>
From: Keith Busch <keith.busch@gmail.com>
Date: Tue, 2 Jul 2019 20:27:09 +0900
Message-ID: <CAOSXXT6U8BeyXYWP9x-LW4mNkWYtumWdyw+fc19HJMpxRLQeLA@mail.gmail.com>
Subject: Re: disk-activity trigger not working for nvme disk
To: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_042724_979654_34F456DE 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 1, 2019 at 6:12 PM Frank Steiner
<fsteiner-mail1@bio.ifi.lmu.de> wrote:
> It's about the disk-activity trigger for the led kernel subsystem.
> We are trying to turn e.g. the num lock led into a hard disk activity
> indicator by
>
> echo disk-activity > /sys/class/leds/input0::numlock/trigger
>
> This works fine on all our older thinkpad models with SATA hard disks
> and works also on our PCs with SSD disks (SATA as well as NVME), but
> it fails on our newer thinkpads, i.e. T570 and T580, with NVME SSDs.
>
> The LED just stays off all the time no matter what we do with the hard
> disk. As all other triggers do work, people on the ibm-acpi-devel list
> supposed it might be an issue in the nvme driver (and not the thinkpad_acpi
> module).

I'm not very familiar with the led subsystem, but I can't imagine what
the nvme driver has to do with this. We don't take any particular
action to notify any subsystem of IO activity, so if the blinky lights
work as desired on some nvme platforms but not this one, it sounds
like the issue must be external to the nvme subsystem. What does this
platform want the driver to do in order to trigger the desired light?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
