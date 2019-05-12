Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27B81ACAA
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 16:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=fSSGzimJYvaBRXUiUhWHzq5KO
	H+VyqDJq/4gtukS2qmoMabyW1TOvMWphyNKDRpURX5j5dz4rE4HJjSUre49WzSbjVOtPASiH5AVv5
	aY/DomDpeYxUkEqG+PSan7+TVE8rJ2ZvE8n3S1eHgrEGLFaJfNSlJhsqKL6qpOSf2NJWmnrYO1FuZ
	lgN3lJZV9D9/qTuS7dwhFcnmD8TRKmOiuezLipkDgZ9tIvBRW7EiPD8iB9mvUOk31RFcd3bwm0iGg
	nRJ8+V5VhRS2KXj6VCaasMX3fX5C20o0U3c2cUQBc2lBJjTQrcGpmP5p/RKX6bSJpOru1LKOKU89S
	218yD3g1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPpYg-0004tr-Lk; Sun, 12 May 2019 14:34:34 +0000
Received: from mail-wm1-f53.google.com ([209.85.128.53])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPpYb-0004tB-7F
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 14:34:30 +0000
Received: by mail-wm1-f53.google.com with SMTP id f2so11332037wmj.3
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 07:34:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=GMCgHqPu+fGrrg1F6StDVrNwr6woCrr4OFKsppNqNzgBMCp84QFoX+L5JMSQJSgroL
 v82ZkYzJ9/ng1YBd1Mib37gE0HPphLiQ9MQ/7DTFLIDf8vRpZFTYC0tRbJZyNgYAoaz0
 uROO6Mzqn/3YxOIP1kFgTJzUhp3+XtARUVpPwIm6Ixa09Hn96mtfFwuyy0W2WR4+OWz9
 4tp8aN+5yx1DQbmNPqv7TYMA+5ycCCECGxconBpjBJxVnBTHHensXjAaHsSAW0sXxk8W
 J94JwRSv5w/g9sD1xIohiP2w44Fp4Dy33m+YScLQx3UM4aAwpW3ScuJ0n5pIbLZgpUFY
 7Zng==
X-Gm-Message-State: APjAAAWXlj01HSou0JmR+jlv8jOKF/vMs5ma5+WCbjv8VNL4PV/5cy1y
 BXV3ECZByQKLukFWus1xv6U=
X-Google-Smtp-Source: APXvYqw1rGJ3DIJ64wb74Kidhg4LhH90X9/xZp7mqvROiiWBwK0T9yNG39M8qkznh1DeROsGsFAAsQ==
X-Received: by 2002:a1c:a684:: with SMTP id p126mr8123959wme.101.1557671667477; 
 Sun, 12 May 2019 07:34:27 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id n63sm10519344wmn.38.2019.05.12.07.34.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 07:34:26 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme: Fix typos in nvme status code values
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
 <20190511134255.6790-2-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <9a013439-6768-f786-1e14-5ffeffc4a5d5@grimberg.me>
Date: Sun, 12 May 2019 07:34:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511134255.6790-2-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_073429_270053_654A97D3 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.53 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
