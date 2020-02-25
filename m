Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D386816F000
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Feb 2020 21:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=GPT3AZxCJBVQD03upTub5BWGW
	sYBYyl1I9OZ1mGnKCXv9xAJzfXwRdYyiYqkRI9Okan/v+YwzOQ1RFwFO2lycSir3SqslLKA9zQ1FF
	GPyG6CKKmybR4cfFkGJUNAEaP4SUJqgf7/pnXSd1Eb+f6U73pAn8Mo3wuBSy6JuRAZSVili8uRGJO
	EwH/SBlHXQRit9sH+xIW5Fk7lAXAfThR405Wznbko/fQsoBxlCJdrg0tlOACK0Ft4xQp8f1u8j0Ul
	AyfFWsD6jRJsYpLiMfh3yTxlwx+7N9qVkjZKVhKWbu0H0uCw/AVHzGV/x80tOcLcBlkW/W/FD7iIF
	6EK2KR+6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6gky-00026e-QL; Tue, 25 Feb 2020 20:24:40 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6gks-000260-TW
 for linux-nvme@lists.infradead.org; Tue, 25 Feb 2020 20:24:36 +0000
Received: by mail-ot1-f66.google.com with SMTP id 66so746149otd.9
 for <linux-nvme@lists.infradead.org>; Tue, 25 Feb 2020 12:24:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=uDJMy2nV7l3g4qz3wFtCE4E+5EEnnV5oEqNMfsYkr8D+1v+v+QH9d5b0zTkZUTTkZl
 J3la2ELpwUmqm2px6N8tiA6Lbi9Zx/kw5aMxYu38dNt/veUZrRYY39FpldcY0H5TQg14
 Pd3q2KuTP2iIaQ9FA9t7qYXqZuH3YjTXW7TCz7eOkkTGz3Dy545hF/6FrST0UwWySOoE
 1b9O0JFS5F2zWB5WDtv5vh1U5kjmtX+s3gNLgkiRgyIrLdfM38kRm/3vIb8yTHe1Urub
 Q8yJ18ceeoCpUsbtkwuXjYnkb53WeUX9lRGmEbOOBQf1sc3SBdibKJFt7w4NVRpgqp1U
 EQkQ==
X-Gm-Message-State: APjAAAVkGkl4F+W4NDofe5pmNMC3hReZMh5Ut/8HMU0DWjKq/vdzxFNA
 xM5XQkqUaowUdor5HI85UoU7jkZG
X-Google-Smtp-Source: APXvYqx5EGiLCfIm35x2UQKiBboqPVfPqsypKW8ua6yYrgulykDBfuhSzfywyh1HFj30yx2LA9MC4A==
X-Received: by 2002:a9d:76d6:: with SMTP id p22mr294967otl.37.1582662274074;
 Tue, 25 Feb 2020 12:24:34 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id l8sm2643863otn.31.2020.02.25.12.24.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Feb 2020 12:24:33 -0800 (PST)
Subject: Re: [PATCH v2 4/5] drivers/nvme/host/core.c: Convert to use
 set_capacity_revalidate_and_notify
To: Balbir Singh <sblbir@amazon.com>, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org
References: <20200225200129.6687-1-sblbir@amazon.com>
 <20200225200129.6687-5-sblbir@amazon.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ef01984d-1052-70cf-f0b9-d46557c2af51@grimberg.me>
Date: Tue, 25 Feb 2020 12:24:31 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225200129.6687-5-sblbir@amazon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_122434_952307_FC483CB7 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 TVD_SPACE_RATIO        No description available.
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
Cc: axboe@kernel.dk, jejb@linux.ibm.com, hch@lst.de, Chaitanya.Kulkarni@wdc.com,
 mst@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
