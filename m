Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737E21084E0
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 21:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeX3FTDmy2rq80eocDzq4VrcdjtC+EfqVbS642LlAyE=; b=OUqenALx5AdmPY
	T84CI9eE3fIyy4cr+EkQZ59/GUzKeyxVTis4P6swnQYOrOGipSOutc5oNb+ER/ESKcCU45VNO6eon
	OtlBeLZoGLk/ixaBR7gACYJGInul+6sFS/9yN7VmVCTAFqiCTWT6wbK7er2OUe+I36kgICh/qKmhm
	rk7P0p4Rp9nilevMizj4jpP9aM0+4FM0bSuEEpRv1ogVNodZhI+T9PH49e0Cp0ZsTbwu1fmVxRdNQ
	rENRlK8d71TiM+eteBrWgGoUDemFRSJZQ0fBam7RWXeQnlMSlKb6dXO/+Ze27iKp6HNCLLTWB0El1
	7pZuwZsjXzbL8zOdTAWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYy3r-0001XH-W5; Sun, 24 Nov 2019 20:00:48 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYy3m-0001Wl-NC
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 20:00:43 +0000
Received: by mail-pj1-x1042.google.com with SMTP id o14so5461838pjr.0
 for <linux-nvme@lists.infradead.org>; Sun, 24 Nov 2019 12:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WAkvtA+FujiuAlWNHJbFKlI8RrNl2D/+TL63UgwL7cI=;
 b=IQryhIVQL9nlTHi2qcxXLlvK01ioMZtLaMI5FtOHpmMl98yr5F2P2TWlqJSCf2puLv
 HTMA0XWVT0WNmlJT4oWQ98Ou4H0FEMaYqXSkahRVD1RT0O82g7n3gry64q8JyHIGB2C2
 fI2l8booR3+DTWhfSLbhPrge4nIHD2VVUrNi1sQKQrJjvMFg8k4xUY6uf+0PUgxpMmYu
 3agkNHi1TL2WVO+CnO8sQGVdsKh6pFkvUGpRtgyALeaRJ/jMP+cw220OdmO4+Yxc71k3
 Hefrtemkkfh1obEKv3TO8n22Gl9AM156hEmu2axAp2yHwuMSbITT6AH7d3PvyDIlRS4F
 tj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WAkvtA+FujiuAlWNHJbFKlI8RrNl2D/+TL63UgwL7cI=;
 b=M7c98lHa7kGzoXN2Rj3WndYmxDw1Fm1nhfIk/F1xLwBAMnBd35yZ8iIu7foC1rAJg5
 RVHqI5MAMJnN4cqlumBCL0zFwgj8JUYghaM/d9qTpMppPEKSlh8Fvscekg0N3eLcNNI9
 KlTKvqGnueJpAp4L8XlexPjIo0CyVKx/9SkU430Hw0xg44N99WWvgePGCgqCE+NktxHu
 lCwG3bI5w2BEh+tFXTX9DruaQy7DL+NOvR17n84Tjr6Bwp6T5KlYrERiINw5qGPYWwYM
 WdEbIHZ6CbNHTcvAuxcNDHf5qojMpXWSsSYDY+/9X1Q9aAIpg+kLC2oDjeWhFKqEeNKa
 KXCA==
X-Gm-Message-State: APjAAAWJnE6M6L5+Uy3KOu40nIvb5cm8VG9HAuBdwFrasuKyntHx3nxF
 7+jqnzFsRuJSrSlh4JWWtOEzKl9jh0thLAnyS8I=
X-Google-Smtp-Source: APXvYqyeHqs18DrwoOZOMY+pvM9NcPjCohZteEBqokEPOIb2+8bN1DfF4b7bh4S7SnvP2Sp/XvVA8o0VXMPTvfCWANE=
X-Received: by 2002:a17:902:9889:: with SMTP id
 s9mr25590236plp.18.1574625642136; 
 Sun, 24 Nov 2019 12:00:42 -0800 (PST)
MIME-Version: 1.0
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-9-git-send-email-akinobu.mita@gmail.com>
In-Reply-To: <1574604530-9024-9-git-send-email-akinobu.mita@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 24 Nov 2019 22:00:31 +0200
Message-ID: <CAHp75Vc6e8xq==QGtEX0MGLoV8QCGQf+vP0x-SauNHyjveZrnQ@mail.gmail.com>
Subject: Re: [PATCH 8/8] thermal: remove kelvin to/from Celsius conversion
 helpers from <linux/thermal.h>
To: Akinobu Mita <akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_120042_776631_9E079199 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-hwmon@vger.kernel.org, Jens Axboe <axboe@fb.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 Eduardo Valentin <edubezval@gmail.com>, Guenter Roeck <linux@roeck-us.net>,
 Keith Busch <kbusch@kernel.org>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Nov 24, 2019 at 4:09 PM Akinobu Mita <akinobu.mita@gmail.com> wrote:
>
> This removes the kelvin to/from Celsius conversion helpers in
> <linux/thermal.h> which were switched to <linux/temperature.h> helpers.
>

> DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET() is only used by ACPI thermal
> zone driver and the usage is specific to the driver.  So this macro
> is moved to the ACPI thermal driver rather than generic header.

I didn't get this point. If we split all helpers, let's do it for all,
and not spreading macro per driver.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
