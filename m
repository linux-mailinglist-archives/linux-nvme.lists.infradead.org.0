Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F61D1564E
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 01:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcMWf65EJqfA0W8DzCOXMI+c2QG2mwDvhyCmDDoflWA=; b=NJkSvczTcfTg0J
	FEUTlqwJA0ngvXP9x8bjaEcJyAHmG13OiBa5iVJjEp/129wW8Im57e/5n+DFTigubRixJac0Hk5XX
	aYylyC4iG9HDPAAfe0tYq7OVZQwChRWqyZbjwqJhHzbBKF3irxR0Ma2OKk/k29Ucnhxzv7QvuwckU
	9ATooQC9kc+Rx5nzXvjkLOO5hgyU8bPJSDWW4xE6gnwL8kz7K+Bx4QK/NGDnCSiJPxC4+DpTGIXTT
	HuBqyeYyo3dMT5jA5kG3RsMGdFS+AVM+zwMvNUhcUQRq2+I84wor0Wl1PtEaypYFY6YDszhS5IMCh
	nqy0TdDsR8df2MEjmb2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmxo-0005Un-9i; Mon, 06 May 2019 23:24:04 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmxj-0005UR-TP
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 23:24:01 +0000
Received: by mail-lf1-x143.google.com with SMTP id z124so4240797lfd.6
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 16:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yxOxaQdaJ/OqsDlgu3Co/ZHHyfNtTpij4NOpIoNjyRo=;
 b=Exs8fXD4Jqa/FITqHIxIUYPuAtzNVtgBVyTdjoEYK/C8LQnLfUHNjL3Od+0J+L6P0c
 N+/6dW1+q48z7LtvGFaxnpe91QwUY8nthDfjWBNfLFQSKjF889lnd06ghTMSPLhOr+VC
 m8DPHaZQQSeEj6ylMVYnE7sh7dJfeISdUsbmndUQ2Nl07PWNfgg5/5WixNjodesS3BLY
 4j+ER9uozNTwOyG3WM27MCbgu3sZcpV1SCYAkTf4JoA/f8zsIrmhRveYpxFLZO/RpmCC
 Q6Do37JCOXHX4a/EmveQpgOr4ivz+oehjBZqB5znjr0ke6GWiMpSVnFn+oOV9V+23jYR
 G2ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yxOxaQdaJ/OqsDlgu3Co/ZHHyfNtTpij4NOpIoNjyRo=;
 b=FK80bF9+zFncpwrdQ2o+7PiupY2zw7BpQJhfz/DiRXAA82qlwZmbYQQ7Wfyvsuskaq
 H8g3ve57hHcDk4DObZvDuNl+bHgVxCz7nKujjSXsINI5g8/Jd9ajM2pVzyoKKlLVNOtl
 76Pf+r28kE60wepCGQO2NAb3qb7/u7mjnxke2pqJfh2BFVSpbjCq/LkJiQnlZbERiMRl
 95KdKFCEiaSc9qnhndXmrd7ZNwhUjO+MLlROpgN1EVZ+iJc9pjZCWYojdG22h1Thdfmk
 s2iIbHkKa1lP6UBKp+f4JZ5ri840olGYnZKy69nvBfQAaHs0iItof1lKeWz2hv6DHyRI
 nZAw==
X-Gm-Message-State: APjAAAU9MQijmSv1PcbIIroFMPber5+WrsyI5Mpk2y6jbtQAUgHnV494
 nIXhhcVIiM5C1XQkoIhTuk9bt2Z7Io2cgAdDLzw=
X-Google-Smtp-Source: APXvYqy3+wc9LwHke83ghsu/ky296EBG64QMHx0omQCuy5+hPsx48g3IEd8bVfQqFsUbGJGxcMfGi49/fMmUesxJn0o=
X-Received: by 2002:a19:750e:: with SMTP id y14mr3757298lfe.110.1557185037775; 
 Mon, 06 May 2019 16:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com>
 <SN6PR04MB4527FAD8076A5A5610F6B66786300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <c86fe09e-9964-123a-bc17-e9b9e6a80856@gmail.com>
 <SN6PR04MB45273CEE5FE1DDF38677980F86300@SN6PR04MB4527.namprd04.prod.outlook.com>
In-Reply-To: <SN6PR04MB45273CEE5FE1DDF38677980F86300@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Date: Tue, 7 May 2019 08:23:45 +0900
Message-ID: <CAA7jztfU+AdUHp5xo8ssjgvXiBFBXJt0PyQTNA8VQU-T-SpKQA@mail.gmail.com>
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_162359_952645_3EE40DBD 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Keith Busch <keith.busch@intel.com>, Omar Sandoval <osandov@osandov.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> >> I wasn't clear enough.
> >>
> >> It doesn't check for the return value for now. What needs to happen is :-
> >>
> >> 1. Get rid of the variable strings which are not part of the discovery
> >>       log page entries such as Generation counter.
> >> 2. Validate each log page entry content.
> >
> > Question again here.
> > Do you mean that log page entry contents validation should be in bash
> > level instead of *.out comparison?
>
> It has *out level comparison.

I'm not sure I have got what you really meant.  Please correct me if I'm wrong
here ;)

First of all, removal of variable values in the result of the
discovery get log page
looks great to me also.  Maybe those variable values are able to be replaced
a fixed value like port does (replace port value via sed command to X).

But, it also depends on the outout of the nvme-cli, not return value.
Anyway, let's discuss about it with Keith also because he discussed it with me
few weeks ago,I think.

> >
> >> 3. Check the return value.
> >
> > nvme-cli is currently returning value like:
> >     > 0 :   failed with nvme status code (but the actual value may not be
> > the same with status)
> >     == 0 : done successfully
> >     < 0 :   failed with -errno
> >
> > But, ( > 0) case may be removed from nvme-cli soon due to [1] discuss.
> > Anyway, if nvme-cli is going to return 0 for both cases: success, error
> > with nvme status, then test case is going to be hard to check the error
> > status by a return value.
>
> This should not happen as it will break existing scripts which are
> written on the top the nvme-cli in past few years.

Agreed.  But, please refer the following comment below ;)

>
>    It should be with output string parsing which
> > would be great if it's going to be commonized.
> >
> No, we cannot rely on the output string as this problem is a good example.
>
> I'm not sure returning == 0 for error case is a good idea. Checking
> return value prevents us from writing unstable testcases which are bases
> on the text output and allow us to modify tools as specification moves
> forward.

Please refer a discussion on https://github.com/linux-nvme/nvme-cli/pull/489
Keith and I had a discussion about the return value of the program itself.
The nvme status value is composed of 16 bits value, by the way, the actual
return value of the program is in 8bits(signed) which means it's not
able to carry
the actual nvme status value out of the program.

If you have any idea about it, Please let me know.  By the way, I really do
agree with what you mentioned about the return value.  If it's possible,
I would like to too :)

>
> > [1] https://github.com/linux-nvme/nvme-cli/pull/492
> >
>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
