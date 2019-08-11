Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC92288FD9
	for <lists+linux-nvme@lfdr.de>; Sun, 11 Aug 2019 07:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NElYKlYHPu+rLghkL72hD+yj/DtpUeakbPWyNmGoU1s=; b=PdqCe53MaS0+iXxD2/L6AIuWf
	/R5n+8KxTYenIbW6ewCKsm+ceDTp8hq9ZE5wP4X+NuPrF8Bn1bH7m+GttTfYDdibjNb1SgQ8A3E6i
	qKyqEfQ5uTM68xQUcTtn6H4B/T1XDlsdjZQ4hrBVLPD42ceUf8DznE3Jtkp7UykcQYIg8WbD/4w7/
	9y/rjJ9oLfRUqAxAP7TmZYZ2Ea7SOpR1TiiAL6lvbH4cgG31bWGrTR+Wb5c7totx2QoRGwwsx4eau
	6WN6SyYfFuiNGgNqOVqr+aJNa8Pu5hHez1nVWqwFH/mTaa4Syv6nYIxSlFfgPyR3IFewMiX/GNwrC
	Q9fv1CGSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwgPr-0001s9-IQ; Sun, 11 Aug 2019 05:29:15 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwgPh-0001rl-IN
 for linux-nvme@lists.infradead.org; Sun, 11 Aug 2019 05:29:06 +0000
Received: by mail-pg1-f194.google.com with SMTP id n9so41664660pgc.1
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 22:29:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7xcYVJGow4JqF19P2T3p+Xm5SrAHZSe3E5lSPsP3NvE=;
 b=ly8abD9cNEkdDRZ6/cWqw3g4KhdC1sKNg/2eGDtzbP6xEO0mssczRvWmKmXMKVN0Oz
 a8I9kafPE/uVptLv3Xy+KwTEs3L41dAh6Vy7LTUZl0YlNBWyiZj62Zd/6NSDkP1s13tj
 jLiXUrOrZU4FmvBQ4QWGc19rLSA2F6RnSJc9OgECLNorwtCmn3Ww6A38PssumywForWM
 nqB60OCj+OIUdIpKkpwm6WtFwFpwjxcG4jzi7SK/hUBJMdn7IYUwUtXnt2/TizDFWZFe
 WHw7Bg4QE5zN9UkBBtBS43r4wlYmmpQreYFQmfrxvlN0V8uGHpUoblY2Pi3Shdfuu1Ic
 XfnA==
X-Gm-Message-State: APjAAAWvttugsnBYiui+pI7WUe2Doum5BxombqhsfOT3dsvctKtBYkX3
 SZyRNBrJ6HCcc6h36JnU9b8=
X-Google-Smtp-Source: APXvYqxODlB+qmCmdZTA32e5FYbhW8jgImMzgOjFfFiXZLE+DYVzgLPj/Gx/QUWQWBa76hgmu0/51A==
X-Received: by 2002:a63:7b4d:: with SMTP id k13mr14992723pgn.182.1565501321268; 
 Sat, 10 Aug 2019 22:28:41 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:a183:2905:6842:b7c?
 ([2601:647:4800:973f:a183:2905:6842:b7c])
 by smtp.gmail.com with ESMTPSA id p2sm144382177pfb.118.2019.08.10.22.28.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 10 Aug 2019 22:28:40 -0700 (PDT)
Subject: Re: [PATCH v3 7/7] nvme: don't remove namespace if revalidate failed
 because of a transport error
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
 <20190808205325.24036-8-sagi@grimberg.me>
 <16b63247-f020-5522-ffab-9404ba7b3408@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <da217f10-97de-2eae-4e60-92ff84fb8014@grimberg.me>
Date: Sat, 10 Aug 2019 22:28:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <16b63247-f020-5522-ffab-9404ba7b3408@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_222905_611076_3967EB9F 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> This is a neat solution, yet I'm not convinced that it'll solve the 
> problem entirely. I'll give it a spin.

Thanks Hannes,

Note that with tcp/rdma, there is another patch needed to pass
this test.

See:
[PATCH rfc] nvme: make all fabrics command run on a separate request queue

The reason is, that because we have admin commands making their way
to the target between we disable the controller and (re)enable it
as part of the reset process. Because of that, we have the target
failing some of the scan commands that are wrongly made it through
(which cause the scan work to wrongly remove the ns and hang).

So I would recommend running it with that patch as well (and also
get your feedback on it ;))

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
