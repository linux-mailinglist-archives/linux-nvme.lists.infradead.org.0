Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16F81ACBC
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=un6PHRR2ejjwhnQNmf0MPvZd2
	9YmvksOu6X4U97w7w2uC03rQd8XX0jiovljHZ4UO+RDDJ0ou2OdXILTlVHn2QQAKUd1cCHk6Bmu0N
	T6+IZ+jlQOCwJv/6aSr6iGdDIRj48wjC/QxOHjvkpkThGJMQN9hFGchKxOwACGiE4k8Kh5eP1wMld
	dlJoqV04ma9UHBFOG1BpECB+U9NDICp2HNwnOSFgUCR6KEOn+QUx2GYCB0qFZFqGIRS/JmdgsXoZv
	AIYXE724jtPBZa08SjJs8Ko5iHADX5sgguc5/3lqsihB16Melp/d0SqR52OBRhhK5MqzD7vsfKQv1
	m3bdrJitw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqHY-0002j8-0e; Sun, 12 May 2019 15:20:56 +0000
Received: from mail-wm1-f42.google.com ([209.85.128.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqHT-0002if-Jo
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:20:52 +0000
Received: by mail-wm1-f42.google.com with SMTP id i3so5675137wml.4
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:20:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=MKIpX8rsOcdTlhSkxBnJWCiwkjlRwntw7jFM/4tFE8TTnloY8NZQu7rxG0YVPW24Hl
 NWVHuEMoNVjDu3YlJgefUt3Gd7R7bjwuCNjBN+lXo5qaZ9LygjcxWGbhU1gqtRBlmtWz
 c22gcmpYjoGMT1qlnza8DqHh/KUQKGBBrJpijgxFgiNc7ynVGYZHTWk6GhxqLQ5rVHg+
 6YfhdddHuFaI7+B8Ln+UAm1WKzPLYkZTeAg1EqQS11bxDOQNcaO6xLqpqee+zbtC2Anh
 9XE8EG1a6Roj6BRocyFZXEuwb632RlTlFU9dvAOpWCMaYM0g7wfaAC6tDtgNX1U66vS1
 jFIQ==
X-Gm-Message-State: APjAAAVfHnlha8oNO8gr8kBX2KZSxejeqG7QlthUVZvSXmx9fkLJvoq+
 YP35h7a7twy61Sh36TwpR3ln6CiY
X-Google-Smtp-Source: APXvYqwgAFkuDweYMhX3vGPqo6zk/EUiNqiLc/ZqHUwDvEMVv4zFeBedfwuUyEfaWY7pMslWdzENzA==
X-Received: by 2002:a1c:2c89:: with SMTP id
 s131mr12704662wms.142.1557674449661; 
 Sun, 12 May 2019 08:20:49 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id e12sm2206845wrs.8.2019.05.12.08.20.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 08:20:49 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: fix single segment detection
To: Christoph Hellwig <hch@lst.de>, keith.busch@intel.com, axboe@fb.com
References: <20190509110409.19647-1-hch@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <840a1643-5701-1932-ccec-03f2bbf5a888@grimberg.me>
Date: Sun, 12 May 2019 08:20:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509110409.19647-1-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_082051_706583_6D188474 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
