Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E4C18C746
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Mar 2020 06:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cNOW3ol7UudjOE4rdi20xwpSB6TIPcGI0oVAsBwfb6Y=; b=bOGj9FVppjVb9/a94hrBjC6yD
	c0GCxoQW7FIlOSJ4qaABTssXE1wfCrwt+MaqmP4oLpu0dk+zevj+yiwasFPGuP0uUK3gkF7EFU6lR
	/vA50knbVNissC/pw5JOCFqAn4ejJ74WTs5w3j1LmFpREQ197c+zb64yM5AZIqurfQdiT606UWwW6
	EvkQQKy7woFNQ62RFKk+swXIikx2uKyd35eqFtprMmRxgpx9aSXeUaSt+5QRkTakoRIKJDAvw26c1
	Iz93+rO03tqxIlHdsvhXysx3wzAzj6Yy7dqGlPbpu8Ocbn9q/UNQ8EdwEP/UQti22tn7EbWDUkpby
	pD8J46C+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFAh9-0002Zj-Rs; Fri, 20 Mar 2020 05:59:47 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFAh5-0002Z7-UU
 for linux-nvme@lists.infradead.org; Fri, 20 Mar 2020 05:59:45 +0000
Received: by mail-wr1-f65.google.com with SMTP id s5so6002452wrg.3
 for <linux-nvme@lists.infradead.org>; Thu, 19 Mar 2020 22:59:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kDLDIz2XQ5PEBiALHiIAD2Xz5Iwic2FRHkLzD/AysdU=;
 b=Xkl8X83Do7sT4sHBXqdzuScPG94ll/D0ulyS+WH3XsDBTIpNPR/VJlnYR+OIFRCUCJ
 Y/pNIp9lk4uDQ+8fii3ALcsuT7Ri2T/gtvpYU4GBsLJ1V9ljKVU3DyklpcR84JvAsg3B
 8i3djdoSiOxtIfvD/U9/iCiMkK9kcp9UNRgK0RnwbHKkZAg6tZogmlpBkIubJP14tQ80
 J1wXoYHOxpfIfCSp+XDbD4ZWuN/O9OwhPNc/NIljw4Fsfkahe0XjGMqZCVtky8BM85jP
 qLmU4g5QODtMyRHtZmOfHpy4tFnlOBPqZEI4mzLjuy85r5W1ZgvFrxJBmZ+RdQSRYT+b
 GEKw==
X-Gm-Message-State: ANhLgQ3zP42eMr7tO1MdLFpKAlRjJhxOY61UhY/813puTOvIMAJHPn7A
 Er+b1Y0JQ0eMeH+QNC5Rt44=
X-Google-Smtp-Source: ADFU+vuxjMcPhs79jFitCVj1e4zfnXASIijw1S3G/QU6r8G90wPjQKTI/sDCHTv90UjRBlD/m7x36A==
X-Received: by 2002:a05:6000:114f:: with SMTP id
 d15mr8986693wrx.143.1584683980246; 
 Thu, 19 Mar 2020 22:59:40 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:f092:4ccc:3e48:6081?
 ([2601:647:4802:9070:f092:4ccc:3e48:6081])
 by smtp.gmail.com with ESMTPSA id p10sm7034420wrx.81.2020.03.19.22.59.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Mar 2020 22:59:39 -0700 (PDT)
Subject: Re: [PATCH v2 1/5] IB/core: add a simple SRQ pool per PD
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 hch@lst.de, loberman@redhat.com, bvanassche@acm.org,
 linux-rdma@vger.kernel.org
References: <20200318150257.198402-1-maxg@mellanox.com>
 <20200318150257.198402-2-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b37caf65-a084-6ed2-2ee9-8a51a6e9b79d@grimberg.me>
Date: Thu, 19 Mar 2020 22:59:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200318150257.198402-2-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_225943_983432_9DCF313A 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
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
Cc: rgirase@redhat.com, vladimirk@mellanox.com, shlomin@mellanox.com,
 leonro@mellanox.com, dledford@redhat.com, jgg@mellanox.com, oren@mellanox.com,
 kbusch@kernel.org, idanb@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> ULP's can use this API to create/destroy SRQ's with the same
> characteristics for implementing a logic that aimed to save resources
> without significant performance penalty (e.g. create SRQ per completion
> vector and use shared receive buffers for multiple controllers of the
> ULP).

There is almost no logic in here. Is there a real point in having
in the way it is?

What is the point of creating a pool, getting all the srqs, manage
in the ulp (in an array), putting back, and destroy as a pool?

I'd expect to have a refcount for each qp referencing a srq from the
pool, and also that the pool would manage the srqs themselves.

srqs are long lived resources, unlike mrs which are taken and restored
to the pool on a per I/O basis...

Its not that I hate it or something, just not clear to me how useful it
is to have in this form...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
