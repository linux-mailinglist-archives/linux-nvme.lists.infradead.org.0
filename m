Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9422CFD1
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 21:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Be4AOQiOfof/6EKU6zjXnTPE1gm+ii24AlWljuX+FFc=; b=eZB3mPyIhC2wcgQvxQaut6lqO
	CukJpbHePmlzdkBDHDKpncEbLAUnKZ2cUP7E73RqULyFG1GJ2Dg9pjFe31F4u6tLV8/BBMUn6/e2e
	GJtrucbof5M4jYcfx9i8H6eJyF3RpCHlUpoAR0hVr9piwQsh0u6YBCa5canCBw4gjgDqGXQaoIlJB
	qTUK4bwQJlBXt0gQocoDSFlOztnzJOF+3ABV1aFPrt76kCUP2/0JBnGUERpPJCzcwk6pXZk8TuCs1
	EVlRwTpjx7dzxPyBDoz7cXBXqB7a004e8NksN96okq5lLk6bDyYrhbUI1h3ceVGyUrJyMEF08dOri
	JtHYPi2vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hViBT-00055A-3U; Tue, 28 May 2019 19:54:55 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hViBN-00054m-OT
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 19:54:50 +0000
Received: by mail-pl1-f193.google.com with SMTP id f97so8786144plb.5
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 12:54:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4zxxdOswPfYt/Qh4IXDM2lheW/N/vruEaQVd9e37OEo=;
 b=Bw2eDfSnwN+TlDAnANYJpPwRrGFbTKojG9VmGOt8Hm6Z1xwcFQrfsIBXEjepGEk5CL
 zqM8Wq3W9FSGcoL3CDesoM5MAiVpRHKofnaMcZLIOthhb2YIFlczsyMhQ01DqlgV6/rC
 Qn274vFmDig6YSsfNf+vrvHvsn1WJtqHLcR04ajaePDCREKJtbvTF8hxBnNVAfLGTevR
 ooPxfXypLOdVdr+MlywKZc8c9afegWshWYtRLNonzj0vya/wWz+b3CwS8HgyMk70bV8l
 a2KYxr1yZjJFqlhnxhWROhLsPXO0k9LX+IWK43ewQeWT4+EoBXQBCWkc0poTzHc/nckF
 tvbQ==
X-Gm-Message-State: APjAAAUcv+AFno/ZIgdyCkX910jnB+mEwM1mUohGnaVLtxQCbXc2OZVK
 Opxd2Wnp6LXpWpPyhzh1BcWJneIQGMs=
X-Google-Smtp-Source: APXvYqylmgoB9n+OLr1R6II3deGWaTwKynv1NeMG7Nj3YLAo4dguiiHrnjFxlK3Kgfoz9fbIB5QzHA==
X-Received: by 2002:a17:902:6b:: with SMTP id
 98mr41826093pla.108.1559073287753; 
 Tue, 28 May 2019 12:54:47 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id y25sm21151293pfp.182.2019.05.28.12.54.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 12:54:47 -0700 (PDT)
Subject: Re: [PATCH 1/9] nvme: update list-ns nsid option
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <1558951310-31066-1-git-send-email-maxg@mellanox.com>
 <1558951310-31066-2-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <24b16c73-ff69-0861-cad5-3fa619c2a9d8@grimberg.me>
Date: Tue, 28 May 2019 12:54:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558951310-31066-2-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_125449_798201_C4AC23DC 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: shlomin@mellanox.com, martin.petersen@oracle.com, minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Is this v4 btw?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
