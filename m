Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA1E3184C
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 01:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xsjpTC0HIlhC26I9Xn/xPfp8+E/yMjuCatu/mrriBkM=; b=br3KKR3JLPwBy/abtbrciBrkY
	a/Hj2FRF/XWG5EgI9ODmyKu533jurD5yHip9Zf6whV8JLSxHzksC1neCeh2u0R9NDwDhGWJd+3LLu
	ac3fkhCy+76S+oBnEeF7A9CnZxS4dJrjHx1nl6Dzul5UmG9pniFKugyBRg7nLLx1AkDMlyBqc51mn
	JwR6sxWs+0wxCjKzU+2uVf/RzBT9EkBhDMJgnFMQIXNBwzDS4LjHozgP0nJZ9WdJ9DiHQt+QBUKfO
	amhq3rp2yHdAHzZs88v5LFpZOVfqtd8mUQlgr+PZEfCV4sdSchwqOI2DfQihPcphlDgUcuZ+mGXuP
	xFbYF00MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWr5g-0001Zk-Ku; Fri, 31 May 2019 23:37:40 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWr5b-0001ZR-By
 for linux-nvme@lists.infradead.org; Fri, 31 May 2019 23:37:36 +0000
Received: by mail-wr1-f67.google.com with SMTP id p11so2686521wre.7
 for <linux-nvme@lists.infradead.org>; Fri, 31 May 2019 16:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7EQtZcg0vR567oXQHBISZgZdcm5SSAIF0zu6O4Xvxgg=;
 b=hB1esR6yGch1zfsnFKZvhOPD96z5AAvwo62+j5/WCND5H/F2vGGqscIHMoP94TE1XM
 oXEvuqMbpKuI4rW9vNqx6FuWtl+Tlh3/O39h7+D9cdLJj17tWGCdFnvM2nD2zbTregmW
 FMHGexLlCIVxpOZ4Kkgmb0/eOAsXR1+xExG+wm/J+jYGHtovhPIw5sesLeEhiRosqm4h
 2P1+foc8Ji1D/L5/Jd6GGyz5SqTmXKmwqH7WWZoe9zfFt89Ay0KiRpfbgr0/vs9f9V9r
 CtI9TSilBB7La1CeaccLQ/4an7BJ6xFdEdlJxrEqyN1NqwDLgoM5I2SZlQeX7x9g+TbZ
 6ayA==
X-Gm-Message-State: APjAAAWnambUjn3gnaw+v5iC9PfWBLdTKo13+jVPGuhDfpc9vuTyFH75
 3BFmufWBxvQfrI5CCKU+nUqVNaRC
X-Google-Smtp-Source: APXvYqy2z3FhHK6SUqd63vpn+3EYz08m9VZFFENMSaoCotzgkHHI5kFyu1l5BcNuWBg1/xaD4dvQ2A==
X-Received: by 2002:a5d:5452:: with SMTP id w18mr8040588wrv.327.1559345853394; 
 Fri, 31 May 2019 16:37:33 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 65sm14892261wro.85.2019.05.31.16.37.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 16:37:32 -0700 (PDT)
Subject: Re: [PATCH 0/2] nvme: enable to inject errors into admin commands
To: Akinobu Mita <akinobu.mita@gmail.com>, Thomas Tai <thomas.tai@oracle.com>
References: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
 <8cb23080-b7ab-f773-2d25-e39b36501e3d@oracle.com>
 <CAC5umyiqy82saDbTAtR8w99ahe-sH=r1hvt2jMtjnFE9AufqNw@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <db9b5af2-9885-a6b4-ed58-f4639cc96662@grimberg.me>
Date: Fri, 31 May 2019 16:37:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAC5umyiqy82saDbTAtR8w99ahe-sH=r1hvt2jMtjnFE9AufqNw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_163735_410621_E7CEA009 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Akinobu,

This looks fine to me as well,

Feel free to add to your v2:
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
