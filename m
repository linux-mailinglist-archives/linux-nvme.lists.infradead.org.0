Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A1579083
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Jul 2019 18:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9kMc9RHNmIRvu/KoUXop0ZgDs4Z3eDKE8fFKJ7vOlRU=; b=AGDcyyrprx8Dmh2cCft3399Gz
	73TWsNMgDJH/9q06QYQdoF/+79ARiu1K1tpTI9Yr3U1FdT08uPat7jJoEuq9Yiwms5hKZ/YXPFC7O
	SX17wwq9QJfhTg2fYtRp/BbzToXAepi4RpAf5nxrpRjh1JXY679IGhAxQc0/mFJvwFkH4FIHwX2po
	hkopPONsDUH4WvqgF/l8kUzS8voET48QHvavezjH1UB4d77hTOlTFIJv09ZKJktDyFHVee7yFS6sm
	JoRxd1JYNXZY2QPYzHk1tqTudNnxnvEDLHLM2MsX+VkJCSTkJjJ0tznnLSuL1AofZzsj676Z86sNb
	Lf0wxO6aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8Hg-0001F7-K8; Mon, 29 Jul 2019 16:14:02 +0000
Received: from mail-pg1-f182.google.com ([209.85.215.182])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8H1-0001Dr-1a
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 16:13:26 +0000
Received: by mail-pg1-f182.google.com with SMTP id i70so17756714pgd.4
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 09:13:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ND0/gGd0Zc8c+zZjnXCNksZNFG6R2STHaZNiJv1mskI=;
 b=nTn+5HzpEf30S7yZVgS4pSGhxJpC3gvS3kh4bDiONsrPLRdvNtb3bPHzNyyIUL2MSh
 sekMoGdCs8SO1DNtuw2DXS1ntP5l0jNjEV62kPPoXABAMeY7m4Km5wZKO4/PEb1dF4P6
 tRoHwlKgTL/ZMpl2lvOMqRCFwP2Hy3R5mEVIXAojYPhW4Mz1S1WAz7T/wu8QgkH4BG3I
 gyAHtCtQXqVE9sxG9uslzHp6JqjTCjuFKl0rpWFb6crOnpJezDy/5rK+7m8k9EIefCA6
 pSGD+pIqz5tfcs7Nm0548k7/bTaVr15J0gZlktipVo7o1TtNQVCmlvGXbgE8cEWLMWyV
 3ydg==
X-Gm-Message-State: APjAAAUH8lSbPE7CPaV4dMd7yQTK8OIYooDGxepcxGb4cd349+B2dnjy
 lxRmRSDxke51+HaPEg3fB6PhbydR
X-Google-Smtp-Source: APXvYqwGHbJES0Af3fXiw2DtzKkoY20oueYDHa19RtnE0ltZ+I9MuJXgwLPh4DUhuouQqaK3JqUp8g==
X-Received: by 2002:a63:6056:: with SMTP id
 u83mr100627120pgb.181.1564416797646; 
 Mon, 29 Jul 2019 09:13:17 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:68b1:d8a0:b9e3:285e?
 ([2601:647:4800:973f:68b1:d8a0:b9e3:285e])
 by smtp.gmail.com with ESMTPSA id h16sm66883282pfo.34.2019.07.29.09.13.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 09:13:17 -0700 (PDT)
Subject: Re: [PATCH] nvme-rdma: fix possible use-after-free in connect error
 flow
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org
References: <20190726172949.1635-1-sagi@grimberg.me>
 <60bd61aa-2022-aac8-b6dd-da1319656da0@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e50b08b2-4b63-4a82-ed79-0b0e9ee3c89f@grimberg.me>
Date: Mon, 29 Jul 2019 09:13:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <60bd61aa-2022-aac8-b6dd-da1319656da0@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_091321_623404_B0C34E9D 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.182 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 NMoreyChaisemartin@suse.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> looks good,
> 
> maybe we can add dev_dbg print for successful connection.

I don't see a strong reason why we should given that this
information is available to the user from both the default/read/poll
queues print and from sysfs.

> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

Thanks Max.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
