Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DEC7366B
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 20:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=dsdoyMROUpYWEHHSjm1Y0Zuq2
	sIw0omT2C62Qd5y1EkluHqIIonfuxGgelnkwYMTJuSre445RLxKtEdG+mXGUE6QeoPcjGIWygRKAi
	5S7wKFor2jCTqhc2xBlt6kV0sLcHNtd9NVNiXsRSVi1dYPWi983oUA91OsHaBW5hsrL4GYfkGnXa0
	6dU6fw75VNlOXi4K4FpijosOyhP4arxYBa5yuKH0v2OS6vvbVgzb1wYmyB7GH75jjUruMkZ4xdWbM
	XEk64pYE4XlrOuvm4WnfCIimsCJV646G5RMLkQ/8iQ2+0d8oSveKNE+EzbdFvExHxl2qi7c/Dw33h
	R2+bvFrEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLo6-0002Kg-C2; Wed, 24 Jul 2019 18:16:06 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLnw-0002K9-50
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 18:15:57 +0000
Received: by mail-pg1-f196.google.com with SMTP id s1so15312417pgr.2
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 11:15:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=uFYp8fAkOvuckRHlf1oSmjKe/HmAYmgeyHdm39IZb2igiLANbyDtLReUFvZIDZoZ1H
 uVtKTBLd2sc94LLu3js78/f2dO6x0MVhHxGw7rlFVQX4dGQGz+Z4sAn76ke59cz5ql+T
 XoH6T0ranMIi4tya02l/ls6o751fdHTELTPMnIcZ17vF1Mcd8cN0KseDNsXWFIJFUhWw
 ixD1isW+FthVltDNZrKA+LDxLL20AL4LRO1Kk3JC0TclXJQoeVL9U8aXtnAHmEQhBkro
 mCDh8xjphiiDsbHPzgks8594sRluaacN6KFmIpWrIYeC+4bVPxCCgukIgsnDqKtcXhiW
 8nrA==
X-Gm-Message-State: APjAAAXMVZFR4OooFD3fbbnru4OlWIsQjPdJjM/0aBEsaspaePaUHoBh
 2F6CGqQVRBTPB3BIwZYTb4s=
X-Google-Smtp-Source: APXvYqwoQK0l8fYv0g/LBeIpzqI24SeQ0oFFCUiWgxMTWtvP715mzMIAeLfgxfRDAzSCuVJCyOjGbA==
X-Received: by 2002:a17:90a:ca11:: with SMTP id
 x17mr89616329pjt.107.1563992155401; 
 Wed, 24 Jul 2019 11:15:55 -0700 (PDT)
Received: from [10.8.0.6] (162-195-240-247.lightspeed.sntcca.sbcglobal.net.
 [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id i126sm51835074pfb.32.2019.07.24.11.15.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 11:15:54 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: Use dev_get_drvdata where possible
To: Chuhong Yuan <hslester96@gmail.com>
References: <20190724122235.21639-1-hslester96@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <451e976a-fc48-312d-eee3-6f4b2a53f4c2@grimberg.me>
Date: Wed, 24 Jul 2019 11:15:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724122235.21639-1-hslester96@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_111556_189289_AA665FB2 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
