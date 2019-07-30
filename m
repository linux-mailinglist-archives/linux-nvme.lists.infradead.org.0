Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB72379DBA
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 03:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MbkjOg2aLN65+tJsWEizMv7iUh+pPzFjAlarQyiY0I=; b=AHGoNhGeq2vtlF
	921arVxbLdSq6DbvBGbIAJP4H1t3rKTSGJAxOXir7vhEsS1KtQGUuEKtEF3Cp9+a0/pXnLK5bcZOX
	4+Ws3FgDhW0Mx/K2WnHylUDHW42H9gl/I2IFezvXXDBUVEg7gSeRVTjqoEreykEoOnXtuuzJ22eON
	0gBj/yO+Qaf87ralZ8swtGlo/phWhx24vpcNKGyAiLSc+ow0cfxy6qG5qQP1UUbhX3sqOXJCNwCrQ
	sFo0H2QKrXB9fcXDytVOdRT74cEs0g2UVlSS7NRiURsh/YaJMFQXFAsCabbnS8GcasEa7oPWqmjDZ
	ZmNrRgnTBL7fGfya/1uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsGZF-0007Lc-Nf; Tue, 30 Jul 2019 01:04:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsGZ6-0007LG-Rn
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 01:04:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id a15so55454516wmj.5
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 18:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CaJBEIOSKRkQPiH/9Fd257NeCVcSE4ygObkZWYrgYIo=;
 b=F2UNmITHKvlIdV5yXj0D8MGErjBytIq+9d+aei6/1aI4c+g8TIuzeCMrZtVV5bthkV
 PHdy59v4u3LkZ7kimplfSRTjTNGINph85hdls0cmvgr0sDmhPICU7HncVWJpFJUTS5dO
 CW900fVgYXcyrsPGNBbV23QvFb6BK6JSc3F+q594sE99ZJU12iGubv+FcUAUEGLYfyHl
 abQRgirF3zkEKC7ZTPWAMqEdS3dClI1naKUbn223FeSDcpVy8yupEBcZomvVQVW0X2rC
 X1Yt3rlL9vP1Vm0N1MIxC5dHDQtAevDmZ+2fxo7PICpCVzy8RWtuDMJ8Ai9M2EnFEVQO
 DJ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CaJBEIOSKRkQPiH/9Fd257NeCVcSE4ygObkZWYrgYIo=;
 b=o4uNkdLsABacMH3kLE+ORoePACAOcPDKXRjcQfQ0uKsGu5ewnABHDmkr7/MbhwlrSs
 6LIJ0F8zHfW1j1zFNY4F7HqGRLonEHkeaoYaTfbSOPDXSXpYSCd9IbyeHVPTxI9ieWTz
 OXsmQI3NICt9uD4tVVgXXMnaxx2ut9xghZ6FrkUa2BnBPJSKl/+5QGRiLZ4OpfvBjEsw
 gmHljL7DEii4RjwaDfbu6zOt8xlNXirW30M0JjRnLyrnsU/QUNlHGWAxzI3VGEGPYJkV
 qafUEA+Sbc+43s4V9CnAUQhl0HzUurPeI7ro6Ek4TIOcrVt0JTgFdPZmUUyXACNrDEWv
 KYzw==
X-Gm-Message-State: APjAAAXByWPjYIpwVo8owq2Eqqw5XYWFglPqbrTf/buBctqAo1T5t3EB
 WxsJ9kApUIxEKuQQ6y+XNfrCRsNh4nvTx74ia2o=
X-Google-Smtp-Source: APXvYqz9hxcTg7Odalrv4lBgmZRbfLltY+/aZHguTHVJ6GJgP57LmF5LaowFGrlYlo/MczZKQ3wlZ6l2Q8HQS4FNE7I=
X-Received: by 2002:a05:600c:204c:: with SMTP id
 p12mr101133235wmg.121.1564448670714; 
 Mon, 29 Jul 2019 18:04:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
In-Reply-To: <20190729233201.27993-2-sagi@grimberg.me>
From: Ming Lei <tom.leiming@gmail.com>
Date: Tue, 30 Jul 2019 09:04:19 +0800
Message-ID: <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_180432_925753_3BCFBEE8 
X-CRM114-Status: UNSURE (   9.14  )
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
 provider (tom.leiming[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 7:32 AM Sagi Grimberg <sagi@grimberg.me> wrote:
>
> If a controller reset is racing with a namespace revalidation, the
> revalidation I/O will surely fail, but we should not remove the

No, there is sync IO request in revalidation, and the sync IO can't be completed
during resetting.

Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
