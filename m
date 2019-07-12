Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 903A66736E
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 18:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=WgmZHYXAN7V3IXhAM3RXviSTI
	9nKbdHHqjnlf4D0NgV3hf+Ejw/U0DOW9CTuDVqkYB2aJWUppU3c9KIqAXOuhXCKcnWPCn1Mp5ys7Y
	Yzh89JYCBeaP7Ebre1P9W0BHcuKm1TM/67fXY/UXMx3OI7dbXxj6toFgSESV8VI/LPQvgJvMtM54b
	rFDyjEGuTYqwxVPWTDkD+P0uTmGPN8BR0QwpyY5CNTPalaSCoEfFJ8ojDSrY58Ymx3jy2E5xC9JiR
	I0mKJbCkSsBZk0rLfKrL/CqcIU9ti02zz9Y6ji4NZGXAPO21Ga3VDgMf30I4ZV1SQ0IYedGuAbJXN
	HvUr3Wzig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlyXw-0005sc-Qd; Fri, 12 Jul 2019 16:37:21 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyXn-0005sL-0q
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 16:37:12 +0000
Received: by mail-pl1-f193.google.com with SMTP id k8so5036387plt.3
 for <linux-nvme@lists.infradead.org>; Fri, 12 Jul 2019 09:37:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=G/WA7MmPZI6NdHVVu2f8cv/MscVt952KYXfdvQa8bnuDbfZXpgWcRcFxRClw/qPqY8
 UnNOLb8SR4TkjM4HI/zXMzCbhpIbYzoXhCj3HpfhcpuTYDHKsoRUnerjEP+hhoJbEKnw
 jluJc2y04Mw7XR2pio0AOdOi0X/3tSjzmehNZ1TXt1yRwE2BCRJzZPcBlmnsKtWNo5kK
 bqvs3M7+HNQup7z9D62VeqmOQNkR0+LDrfIMECV7mPdqb+TQrBr5ic58X8JD9ILBlYMQ
 jfd8fqsfgl2vvgrxjPgaXbr9zrUOfzO7RkpiUELf3d1UJSCahIimMMa8uqi2JxJxgIo3
 OBiA==
X-Gm-Message-State: APjAAAUCCh11mW8sMIA2IODqVZgfHBycYobUPooPetecpj1OkRabFbk7
 3c7Nn6f5rHr/ic51aK4tJDLb8Qo0
X-Google-Smtp-Source: APXvYqwRpz6FaPASYBVqHCuHP2UivxSmw5XjwmQN+8F1/1z9OALPQyWYV/UADRL0hhK7dmfYH/P/BA==
X-Received: by 2002:a17:902:1081:: with SMTP id
 c1mr12668642pla.200.1562949429789; 
 Fri, 12 Jul 2019 09:37:09 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id d12sm8605494pfd.96.2019.07.12.09.37.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 09:37:09 -0700 (PDT)
Subject: Re: [PATCH rfc v2 03/10] nvme-cli: allow discover to address
 discovery controller by persistent name
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-4-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f237852f-fa0b-7852-9cec-88e06d973103@grimberg.me>
Date: Fri, 12 Jul 2019 09:37:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-4-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_093711_068444_F181DE19 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
