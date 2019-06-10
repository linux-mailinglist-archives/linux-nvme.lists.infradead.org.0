Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674A13B6B6
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 16:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2S+0QYkRcg3Odxmfxmt9vX9DUWqA/239uY2c53+Jm0=; b=kPsooQaRLRSRhD
	Km/LErhQydwye5BIMIUj/Y5XjR0jJCMrVIAom+jKQCR9uXshZgkoM4NbAyhOvykT57qa4MYYd0Nkx
	mfDLpOp1SdB3O01E0x3T2FaOujk9XKyHwfbMgJ36TYVxoEfl5JIv9lHbxDMA/fq7fEJ9FLYDuHMqA
	3YfvJzdSPN1OXFGKbjUpi97AE35n6K4u++l5bSGWrd9macZC8N394Zk/xSrSexkiuWAVcrYqY+ktO
	bx3JfoeW13ziHqCbNQobMnsv3oRKIFSP2Jk3DtbjtkaYOUXovRTNMpIpRjg1spuRy4tsnZ7WSwbF5
	uqQtW91Cr5IaEk+Tmpeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKww-0007eh-SK; Mon, 10 Jun 2019 14:07:02 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKwq-0007e9-5g
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 14:06:57 +0000
Received: by mail-pg1-x52e.google.com with SMTP id v9so3394161pgr.13
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 07:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Vcycf2y/TVJVrYPKWevN/s3XQSJKbmJ49bSQR1X7Hj4=;
 b=TuVutxnGhoFVmmN6y7sQ/MmDWAbmIkc9KSojm2L4qy1UZbntUN5I3Vzg/vVlHDILUI
 21/BmCgZAI/3l58ITjDigFtivD7+efb0irk2qsNQnxR1CFf912RuApjKRnwsb0IC60WK
 3TK1hywzpHFGyptR9dAbm3JzIJ4mGbc1d+g36nHmzbKO8uJm7qzs6RjDQtvqZc8tiTWG
 WmZTDjb7iWL7oc79PlBtIClEeszFDqK3pZjEnXCoWPgdXg19gV2U8LAd5aAwTLEG1xhh
 PWB5kcbp3nH5rUr3u1EHFW3gZkgVn7S4ENwgq7qReAL/NXdl/yYUZ4LJ2N7eA5qXLThB
 inXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Vcycf2y/TVJVrYPKWevN/s3XQSJKbmJ49bSQR1X7Hj4=;
 b=YpJM1/VyJW+XB7K7vrtCDdRoSPJEyYy9CwIcPoXYrdlx8+n3sIEyfEm6WIYvNJG1rm
 +nr7kmNAWoJ7EzupBCTFlCYCSyTYEz+HBVQlAC1jmFitS6u6JMfdTSiihXgR8QTT7PV2
 Y3evPA8WZHJKkcfB7Mh5P8Mo+LJJ5vEvWyJRsk0SrLz5Yn9nuux8AmQefd3a4JSv0tbe
 vBHe27F4Kbhra5TtTjqKxOwfjlMdwWnKRr8GbMoBsglUi8bmeLE9dq9G9Pe9/KcEBjzb
 kuRTf9lnHjKm50TDawP21a9HXk0QgAic+pEcVOu6ZNJw23047BRqQyFhmgq2sgJ9G+Lf
 WU/g==
X-Gm-Message-State: APjAAAUKmUZHmg0fWD9vvpnHvUeDNh2XoKiosK8geqQR0o4xxD2e9bBp
 kp740HvwxKQ1ySlcTK6kqFzhAwt1Ecg=
X-Google-Smtp-Source: APXvYqxiOennscmzqp1z319CCkuyqEK2d7eYvsrkWJk47gD0wuFQDgKLAlaDxbC4ckx7W8NFZPPfPg==
X-Received: by 2002:a17:90a:bf02:: with SMTP id
 c2mr21624157pjs.73.1560175613193; 
 Mon, 10 Jun 2019 07:06:53 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id b128sm11516383pfa.165.2019.06.10.07.06.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 07:06:52 -0700 (PDT)
Date: Mon, 10 Jun 2019 23:06:50 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <keith.busch@gmail.com>
Subject: Re: [RFC] mismatch between chardev and blkdev node names
Message-ID: <20190610140650.GA25273@minwooim-desktop>
References: <20190610124925.GA20319@minwooim-desktop>
 <CAOSXXT6BJD8tnus6=vWh6dr9owkVSJdQ_f1icG9Kdq7SpF9Pzg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSXXT6BJD8tnus6=vWh6dr9owkVSJdQ_f1icG9Kdq7SpF9Pzg@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_070656_218338_203C7E44 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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

On 19-06-10 07:55:49, Keith Busch wrote:
> On Mon, Jun 10, 2019 at 6:49 AM Minwoo Im <minwoo.im.dev@gmail.com> wrote:
> > Should users with multipath enabled know this situation well and do
> > something with perfect understanding this policy because they might be
> > administrator for the system?  or should the driver provide the same
> > index at least right next to "nvme" for the controller and namespaces?
> 
> You can't just use the controller instance for the namespace names
> when multipathing: you can't consistently name the namespace that is
> accessible through two controllers that way. You have to use an
> identifier that is common to all controllers with a shared namespace
> access, which is the subsystem instance.

Yeah, I can see things in multipath code just like what you mentioned.

> 
> You just need to know this if you're accessing direct namespace
> handles, and the controller-namespace relationship is accurately
> represented in sysfs for those wanting to view it.

Then the user should exactly know the relationship bettwen the
controller and namespaces via the sysfs structures.

Thanks, Keith.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
