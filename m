Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F856D763
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 01:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qi4RPV8C6sBOJP4tesnLNmLb8jT9ITPPOE4eV+0ntOM=; b=LxbeIPLLV12nX0eTsD82N91la
	ZQOOnqs/0ExscgSQVUBgKCXfiH/5i+33TZy5LmHZlk3uEvF/aiWlClKe1i0ZEtCNv5I2N0YjpX24q
	S7b7wD0WW9Z+8gXDmtE47B6jJzetlDbwMxKxKvPgPERyivYHmqSk1WjEeMrUrf602LjI2zBlktBgT
	5a+3fBXm87wGY6xjTxXVY2qNm9JKq2MI1JY8EQP9GyualOgZiQzJno/8NNcLkfbDusfV2JHHM7e/w
	haNstEn5JhtU+/X96wiLJIcLRUz5VpFjTRFYLLgQ8sQtKm4tqrVIbI5CmFsrEFQ8vJPc4dJwgIw72
	PwpHF99bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGCd-0005aH-KU; Thu, 18 Jul 2019 23:52:47 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGCX-0005ZM-H4
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 23:52:42 +0000
Received: by mail-oi1-f194.google.com with SMTP id 65so22907675oid.13
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 16:52:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZllE0gIBJhpo05kcIgz3B2wrvprdqJzTT5m8KUHoNB8=;
 b=FFnbmyq0vpqWA1mxUed+W7Eva2OHKak8GGGu/UUa2LX/wWR/fLq/I+31rsKxnASKz4
 dCWs3Wwie8Xse7S6Ugy2HEyMbT6Cm6KNYYLA3KYFSP0aT1eQBeRgjvezCuVoXWPpV7LZ
 9jNqs8hcqKHuyidVsUDmbdx8N21gYQrR/dcslaxpfX0XmBJknaGQcK8n4gL+1tnhSG+d
 nuz5ON5SPuPOtpPREhX7lcR6+y8O0cJ0l40WWmbRiC4x5/JDgZZK4wqxA2bMH0y+oRFk
 kKLex0WbKzYbRFKV3pCF3rUeDM07cK8Ms3yqYGVqOaUWf0v5D5uXexrFz6QnDb3NAWKx
 hyRA==
X-Gm-Message-State: APjAAAURWVvwOJsVRSG5u2Jr6hhylZL0woBEUv3O74c1KFp1EoTZwzHK
 iOXkWbiBHyPu9PgPUzD3+Ms=
X-Google-Smtp-Source: APXvYqzTetpO/THoe8y4mQ5Fg6W661z9NC1iloekeMnNeAZy8DyrmV71kKcGfRngaOJyMv0dAUPxbA==
X-Received: by 2002:aca:eb57:: with SMTP id j84mr24378141oih.17.1563493959724; 
 Thu, 18 Jul 2019 16:52:39 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e10sm8991218oie.37.2019.07.18.16.52.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 16:52:39 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme-core: Fix extra device_put() call on error path
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190718225132.5865-1-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8b47dac6-479d-c843-0a11-1de8de376a7e@grimberg.me>
Date: Thu, 18 Jul 2019 16:52:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190718225132.5865-1-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_165241_566571_6D6B1654 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good Logan,

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
