Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B1A2EA1C
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 03:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=TU4l/ri0Ets4qBURyjpuEMAIp
	5F2soQMpvRl9ysPFzTEHRjesjSL8PbZoZWSuON9r1uBzRxHQyNyaMZyCV1ZFlMRBe+WVGbWxVCl8c
	mUKPFUhByc/G98yqgZNUk4ZxKSyUZNcABrNZCWaN5qTjECntgPiYwdu2fNvW0xsFF8rC16/CgwTPL
	lanUKaocq2KS/xGTMqczKuYV7JNfRkkVNgUPLue3kjQTX/4+CYMEocUCVW0zsg9Kkgg8pXrXOmry3
	Tbqa4jd0n+P60BqHH35l+TZc8FKJpC2resHgJa2gJQZhccxXVkXCn4j5Ne0nu2UUfOFULXMREO2kX
	vTQaKNbwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW9d1-0008Ri-E4; Thu, 30 May 2019 01:13:11 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW9cx-0008RJ-ES
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 01:13:08 +0000
Received: by mail-wr1-f65.google.com with SMTP id x4so2997796wrt.6
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 18:13:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=bIo/e0GwGuIF16lI2C5FJWKUnoTyIKnMtucUidYFPqoMNinym/Z9dpAKHUmw1tmV72
 ruNcizj5/SuYI5DJJjbKvlpi+R8GyC0+73hwWfBjsbpm12ylVPJkxUNORBDAUJO32Nur
 ikUSgtjb7BtfSeHFTQZi9uAr9XjRvGhTUn2nbX9Y8KUqX3nhSztCl0AP0OTc8vfz0QhO
 pjninwOba9ECQSBXFCVUTRsrHNt4Ijh0H6lmimZTsjAzFtmZT7nD63tjmQff6EEgemv5
 auGZyd7GENuW2jUyHmnT4QL/sHjVXky0mJx1J+L2iQ3HuO5OsKD1dv7ExqrKxv7OpeDT
 PRgg==
X-Gm-Message-State: APjAAAWX2jBbeVnY9Be/p3tQg83A35TYwRMm4JFjIepCMZ9LIm45tdEx
 qyqb726ff5BihwK/0Zkv8/0=
X-Google-Smtp-Source: APXvYqzJQVl7/mNQ/xzPz9+dMPrN6yfZmQd7+OwLwCwiBrQX3/9cWyebJubUANp8CC0ETQRW9D31gg==
X-Received: by 2002:adf:e584:: with SMTP id l4mr545105wrm.54.1559178785810;
 Wed, 29 May 2019 18:13:05 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id u9sm2668894wme.48.2019.05.29.18.13.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 18:13:05 -0700 (PDT)
Subject: Re: [RFC PATCH 2/5] nvme-trace: Support tracing fabrics commands from
 host-side
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
 <20190527175346.29972-3-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0c02ec4d-d68e-0341-6eea-71b5e1540e29@grimberg.me>
Date: Wed, 29 May 2019 18:13:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190527175346.29972-3-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_181307_482811_BEB83FFD 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
