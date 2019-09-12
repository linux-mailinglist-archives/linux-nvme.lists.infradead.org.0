Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565ACB1364
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Sep 2019 19:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iK/atYbFgi9GUKjw5DSEdpya4gt49UBDiA54L8eux8=; b=XEc5wGugXbzuMp
	pp5DKIMig9ZUecu4Zy+tc0QU1C7xN8B6LQiD/4jUVKdKvVdlEQyKmegctltm8aAtJA4G9Cj6RrYUb
	2f0bf9JOVNGKOilNctPWAKCO2H8u0ctJkGZmxTOmFssEo9z0tIZydGyIcMUCNLNai22DpLTMnd0x3
	YpQcB0iZqd/T5hiboQqEe8cXFROAWq7OgBv4zGus5dIqtdDvbQeUJ0UjsguZMiKL7EJnHW5SA+K2Q
	JgFrUMe/S1lmiBPaEgQ8gSt1ncdhp4NWi/nTvYTvIP6JWhgGHJq3tnl89Ry5iYO5QVofKCPcoyLhf
	l0wer0FeA8rWxw+cMD+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Sm5-0003cP-SD; Thu, 12 Sep 2019 17:20:54 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Sly-0003bn-1n
 for linux-nvme@lists.infradead.org; Thu, 12 Sep 2019 17:20:47 +0000
Received: by mail-io1-xd35.google.com with SMTP id r8so31645749iol.10
 for <linux-nvme@lists.infradead.org>; Thu, 12 Sep 2019 10:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LfDDG1yPuXvqWqb0gH52F3FjqH4jap+10Padj/ieipI=;
 b=B/9+9cuqZGLD3Vtugi5f2NQ/MaQhy+eQHvFLFqAACT3HI+d6J8mU+JVNsbaa6wfecZ
 fqAGGe9Nuu46CEJzrwfmgQEC2SlvwAHlCLDNTjjTGyJiTiozRquCy/nUsTL5J55/6/cX
 4+xtXSLLzrckIg2xJ2F623vHBtNhrddjhn7RcQRcGJyBoNDwuOLQGkTDEy9keNX1Amod
 4cPOgo7MddK+U/qD/TnSOGUB7tkocdgvpw1EzuAs4TG86zzCmQuyc2TdZjXmMxQb5vbQ
 73lw8vHkOAdazk2cwDmBcdTYBpX8lAuXIR79C5HIqlin58C6jsDL1D3SA5k/k04fwTGv
 BCOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LfDDG1yPuXvqWqb0gH52F3FjqH4jap+10Padj/ieipI=;
 b=MZ4rNXxKpSN/SJkSM9SYUFUAKV1J3QW3jaiRl/F+ifbQrpC3ZJfi8DfcZbBUYWnFhk
 P5XTKdlKRKJ3m3r22qBc0pvrlUqdMB0TrOX5aSbqY6J0vjSZjQpGk9YeDGCredwNufmZ
 iMora26UyrGKSOZGPfZXLPFjWMIsTIvJ4rsvs59MCwF5zkbjb2UQpC5YpDS5t8xRjCu8
 P9kJPO8/eWDwBErRN8VZcrK05TKTH8PrmC50nNN42aPRVUanejNVUJJLzDnKkKnMZ2s4
 tlEKZN4zQGmeJ9h1O2MuCmqsCLMxIVips4e7egHWzWPPtCYDd3wIZxiLAGP1vBoFYcP1
 3Y6Q==
X-Gm-Message-State: APjAAAWwKWoD7eVtqrdfDilcdlchZET9tPLdEXBwKCVLQl9P3drtA3PX
 Y4fefRYXCA9SybnFdYSuXBYmqg==
X-Google-Smtp-Source: APXvYqwqg3S/10FiraOdZzfZuwSW85lEHXjS7ReQ3aSr1HSPhYxfVqv+BvscIl/xNEXkqLNfd17BCQ==
X-Received: by 2002:a5d:9a01:: with SMTP id s1mr5943898iol.255.1568308843836; 
 Thu, 12 Sep 2019 10:20:43 -0700 (PDT)
Received: from [192.168.1.50] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id n15sm18674391ioa.70.2019.09.12.10.20.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 10:20:42 -0700 (PDT)
Subject: Re: [GIT PULL] second round of nvme updates for 5.4
To: Sagi Grimberg <sagi@grimberg.me>
References: <20190912164151.7788-1-sagi@grimberg.me>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <19027784-22ec-e479-b963-ae6b1c93fdd0@kernel.dk>
Date: Thu, 12 Sep 2019 11:20:41 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190912164151.7788-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_102046_237438_3127D9E8 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d35 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-block@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 9/12/19 10:41 AM, Sagi Grimberg wrote:
> Hey Jens,
> 
> This is the second batch of nvme updates for 5.4.
> 
> Highlights includes:
> - controller reset and namespace scan races fixes
> - nvme discovery log change uevent support
> - naming improvements from Keith
> - multiple discovery controllers reject fix from James
> - some regular cleanups from various people

Thanks Sagi, pulled.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
