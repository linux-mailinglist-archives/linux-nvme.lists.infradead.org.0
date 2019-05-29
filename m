Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00052E0E5
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 17:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCa8axWtgTlIP7O3NyCcK8GCj9nztYiD8ls2+okxm6Y=; b=nQxpnC7W2RhbLR
	TT9/nhSzNhco7zuiD3dN36ZNIC+FzFIRv3Sj+Dy85OCYPYZlfvgf24HPgovQdBU8YNCCb1ifuG22y
	4ClJ5cXNuCzOeh2JxuoLGO5fku+930u337N0nH2XHyMsf3yk8CvnRaNAa5gEvLq11sHwC52kTrKMs
	HAGx4PmqcDX3tZLDQWcyj07v5sO/EeBv0ZCZMG357yXbU8K0UnWngz8morSsmL3d6q6CxRyAaiRDd
	wumRVgKFX2TLDKVbWXBmZf7QoFUpw1P/ulNiMWKOUVGsoY2xxNA3VQzDpd8P1JpT1bRNb0uUsRa5m
	Jip9aqn5O0SUoDULiBRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0Mm-0005Oe-5b; Wed, 29 May 2019 15:19:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0Mg-0005OD-Ql
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 15:19:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so1208654plz.1
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 08:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1A7TCCgc5M7LrkbW+x271X+Y6YBGe6GwJjsMzpGZe9I=;
 b=Z8Tp+KrVyGUMMAEsQhbaQ2TDzEEz/uaEKxfWsEnJRn+nZQDSoINbyqGfWqt+ZYvVMW
 u+1Yo1fsE6I+VQn9Bd/KfVNUdSzL5PUw8wG6Ysh6zq8da7GaemN2701/H7lV5xvCUHNb
 /lChC6y7938xSxE9gKlWoqmU0ZbGa6bu0W6wKxW9ooCKlPGl7hfWfUuPY1pPXg0ns4gO
 XQaqYE7alv7ZDer8OOMA6T23Mp1g5VbUgtN57mmQrqY+rv/1Vs/FJPQEd6QpGksq/1mq
 JvbHodEmxcA58MBefGLRisV9oFjVm5P7MvOXVFcQUSJmH0qJlFcyIYIbArG2GgylEg2y
 SZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1A7TCCgc5M7LrkbW+x271X+Y6YBGe6GwJjsMzpGZe9I=;
 b=CvTMmHstGsRRzzNdMq+YrxGCVovAoFG3uo2BQYUHGKc2paww253F/jt30ozOB5CPdF
 o1e7o/ecRtRsR/SHTvjwqACRHJzfFOGVhSZ1na8a276TfXbtr32pWrVeLWut1FP26Fmg
 J/rrkxAOdsUaskJPljwur9fPZQ1ni+DnX6HV8c2Sw7XZFt1pxrPILgf3zKoSGMWVgGCa
 LRSe4ye7cWzu1PT9KqejAi7TqcfNt7wFSbigKYFUckT/AEPjfQ0G2R3bbLBoQBaPzBrX
 uwekBfRpguFBn41hgqOMEbyx7meBi35FSvKVh90GWfWCcxYP1g4WIRkXYoXIYdzkTCPa
 4r6g==
X-Gm-Message-State: APjAAAViq4SeHT30rejHQ8+IQSnzVvW4iBJMp+nbYs8iGsUsOTA+SNdp
 NlmtdCCrcS7FLSnNESWcZkc=
X-Google-Smtp-Source: APXvYqyWhm4iWgmGXYjUZNYb1IGaMErr56TzCYiPSuDg54pYVL4P0z3kcbVOpcop3OzvVN29C3K+gg==
X-Received: by 2002:a17:902:f082:: with SMTP id
 go2mr132410616plb.279.1559143182238; 
 Wed, 29 May 2019 08:19:42 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id t25sm33488515pfq.91.2019.05.29.08.19.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 08:19:41 -0700 (PDT)
Date: Thu, 30 May 2019 00:19:38 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 1/3] nvme: Export get and set features
Message-ID: <20190529151936.GD28274@minwooim-desktop>
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-2-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558888143-5121-2-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_081942_866881_3A71BE4F 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
