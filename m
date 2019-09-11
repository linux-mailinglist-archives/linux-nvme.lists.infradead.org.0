Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB568B027C
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Sep 2019 19:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=CA697CB/xW3VdasA6qNrqBiEW
	YhyiXkVbxFvNJcj6ycnk64wkv54Y0xY2Gf22TEWMcr6t9Lv4yq5SYgGBs1Eu0nAQpesINLgz2815+
	O4UgnuO1NIE5GXhbGydoiL+R6JcMispuJ8/JiW0oIMB3aelgA6N1iJAgZ+lXmK0iR/XXu/wHcXy2x
	5IKOPXlQqrFZNO4GQgqIwdY19kKWxb7gFu+72VvUzWi7NEfTEaASmmPqzOhO7FfnIeEU1a+5q0RkB
	+ZfOlSCPCH2tBc8qCrXMb7wetzwIQNeoWZ0HwDsFCuBc+DgKcnYBHwofvpnPuT0TnQXHLD/zKJt58
	P7QVcFvwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86H9-0004nl-Bi; Wed, 11 Sep 2019 17:19:27 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86Gz-0004mv-Vl
 for linux-nvme@lists.infradead.org; Wed, 11 Sep 2019 17:19:19 +0000
Received: by mail-oi1-f195.google.com with SMTP id z6so9255880oix.9
 for <linux-nvme@lists.infradead.org>; Wed, 11 Sep 2019 10:19:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=Qi+xwlK59l/ezpJyqwWvIQCukwDje5FkhClYm2jXfZdNR/VLpMAjWPYLEIMMT+75dC
 q6koD0pfWbRXMV6ARBfgKmZ1L87Uqc9qZF01VJSBX3eKtxSltJcY4hinTPKQU07oGjqg
 pK79EZQ9XoP5GmNFqYMt0ijWyb5PRQ51eijLBhtgtsxSlmmtzgu9QjgGUsgQEW3BPVKA
 pKceXL1vcYmV2C+lnugVpN5rRWO2dhjk/+kuDKOT1MC9uaFGoFiudcqllmDmY+s93q36
 n2icF3SGU4kNltvkfw6loOGZk+Mn3gk4d2LaXeq12DBMBgBxy/UiIcXu/DU6U8VcAJKF
 KRUg==
X-Gm-Message-State: APjAAAXPNfmmezU52GAF+7TPiI+QbRyDwBeaE59x3jPdntLA+8YRTeIq
 s1YJD9J9jUVarDtnCNdehvInnQfk
X-Google-Smtp-Source: APXvYqyXdUt23tgPQin40lxwUV+EKeatQGhs0ErHQZEAGbpfUnvyS+B+QJgGXG2sgbFG5xYLgOPwRQ==
X-Received: by 2002:aca:574c:: with SMTP id l73mr5397367oib.47.1568222353181; 
 Wed, 11 Sep 2019 10:19:13 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t18sm8721368otd.60.2019.09.11.10.19.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 10:19:12 -0700 (PDT)
Subject: Re: [PATCH] Added QUIRKs for ADATA XPG SX8200 Pro 512GB
To: Gabriel C <nix.or.die@gmail.com>, LKML <linux-kernel@vger.kernel.org>
References: <CAEJqkgivvhQ=tOOuLjY=iwBVCKQhmmjpfNDa1yJ5SreNQubw6Q@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <335f6d13-e61b-c683-6589-cc8b097a9e57@grimberg.me>
Date: Wed, 11 Sep 2019 10:19:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEJqkgivvhQ=tOOuLjY=iwBVCKQhmmjpfNDa1yJ5SreNQubw6Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_101918_023866_CADB7C23 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
