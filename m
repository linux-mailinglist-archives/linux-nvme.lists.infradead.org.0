Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF123B68E
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 15:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/tDx7QdgXpv9kVfICSDu0/p9PUmSVI4L0lrnJu58j5g=; b=sNlDVH1uWjIUSF
	5WaKZrNibNm0IH3hOeuUNPSsg2RFnVLINff13+YoNHD9fFXSzgrhurWGVCcnYvfK3BHW9A2j381OF
	r5qbwdE99Yo/mXthih5KbagfVdZcTsJSW+tRzRGpMpZObnaIgBFeU8lDSeQZNWwK2I+LVzikC1rVY
	kNE6vU0bDItP0FNTz4RdFutZ5Jcyr2+OCCkChFTIw+ARz40F3+C4mb6jjp3ekTDQOS/a5+V1M+dMs
	hCP75R4dHBM6Z3JCCSiuSW+2hJuNGjotaeZz1ame7I2xiLEkd6/gDxb0rW7mBKaUPqjMFotlZ3Ci8
	i0G4topjFvBFZq/eFT0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKmP-0004Ai-GY; Mon, 10 Jun 2019 13:56:09 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKmH-0004AI-Kk
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 13:56:02 +0000
Received: by mail-wr1-x431.google.com with SMTP id c2so9280907wrm.8
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 06:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uO4+GZW4xbXl4/wykQtfEQ0jDCPmlKa2yq+0Q5jkCU0=;
 b=a6KC5zqFVMzW3vx3MIVsabnxZivrl3BVMFpVv9y2bs4143Y6YJ7Jv7VCfRa4dbgoAd
 4I6vaLXRdLySUBh7q3bey3wCQ76GYPoLcAzr8LQPBFoSC5Ls0Fbvl9/SaPsyoofKAe4Y
 SoDeA+is87w28ke0/djURMhXSrtlA03xBhLw16ce/JNY6CHZOChgF9cDAWo8tnRhgjg9
 c1DYi61IIeQOaAvCqrn+NvWOmkLqKiEhNlOJAkIBHK1zlc361qJX2PsSJ6rph9sBDJ+M
 Om0BfMriGvffdSLGHmAKeslfKiYToDLfvzEpNyn4PZtql1wtZEQ9voJRiv4gSElUjmpA
 A4bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uO4+GZW4xbXl4/wykQtfEQ0jDCPmlKa2yq+0Q5jkCU0=;
 b=gQ3B/ocyuUXN+eGdyEodc5vFmpJbVeWGDC6ZSrMATI1tMYaoOx++NJWsEAUplYZtPZ
 R3bdG1xfOjw5z8y0czMxdCO8c0cKhxWgR4phqWKL0J4jlOlhl9Q6MXWPdVV21A1nsZhm
 sOuMa86kg912Jre8TwFEJBGSniFFfwjUhkOPq3cdRvhU2b1r8oVoLREMRQ2JBHHxmzFH
 EMUq/KyZKuhcDaPOpJyqTN3uc7DhLZvFBnberRRzH7pHicUIuAIDpJ69I4X5iowUCZ2c
 zh7Lc4vuYFmacjKyL4eu+1V3PvVbA9TP8U6D251H06G0YEJvubNppHovCfOSbMUUCPoo
 8zOw==
X-Gm-Message-State: APjAAAWZMMb2FfFCmh5u/QH8UTip+WAGQPJUKgfw981hi8ItkdkQkL/o
 w2/nA1QOA1wee1oJyQ5+OXqpkw5KagzgyWjJi4Y=
X-Google-Smtp-Source: APXvYqyIi3LtnRXzAoCMckyk3WQoFK9OvbvbRkTnVNcStjtXhsfMk7gARN97dlPMBzdWS0BBCwxJSmGezvn8Upbfp4U=
X-Received: by 2002:a5d:400f:: with SMTP id n15mr14781240wrp.312.1560174959651; 
 Mon, 10 Jun 2019 06:55:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190610124925.GA20319@minwooim-desktop>
In-Reply-To: <20190610124925.GA20319@minwooim-desktop>
From: Keith Busch <keith.busch@gmail.com>
Date: Mon, 10 Jun 2019 07:55:49 -0600
Message-ID: <CAOSXXT6BJD8tnus6=vWh6dr9owkVSJdQ_f1icG9Kdq7SpF9Pzg@mail.gmail.com>
Subject: Re: [RFC] mismatch between chardev and blkdev node names
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_065601_681559_942FE578 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 6:49 AM Minwoo Im <minwoo.im.dev@gmail.com> wrote:
> Should users with multipath enabled know this situation well and do
> something with perfect understanding this policy because they might be
> administrator for the system?  or should the driver provide the same
> index at least right next to "nvme" for the controller and namespaces?

You can't just use the controller instance for the namespace names
when multipathing: you can't consistently name the namespace that is
accessible through two controllers that way. You have to use an
identifier that is common to all controllers with a shared namespace
access, which is the subsystem instance.

You just need to know this if you're accessing direct namespace
handles, and the controller-namespace relationship is accurately
represented in sysfs for those wanting to view it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
