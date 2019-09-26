Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67920BFA5F
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Sep 2019 22:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tNwVbN+1M30OUzfmvYH6JVi7nuPlyDY437stjCe4Cxw=; b=Sqs9cuVbIyJxSaF8r73I1PACl
	hapuThgscJ92vYqo0ixQnP8VyvF59GZqB+jLsDf1JTg9z6p/ZJRcY8ZJPQksVaNHvNwpExhtTrZPE
	CH/tFZrorLWfRnp5WUG6g9mIk0hehuteSw0zxzQQ4CIQqLYtAqydnkDBesDwMD/gjorKlF+GDXmBH
	C8BBAV+iUCozKh43EXsb8SX8Oiyf007w5rwZ+uZY2guZcMoXkyGLMc1xUmWfdCqMMQulnQcR2ekFi
	BAULaUrPPpFqroH+BAmyqgHmhrfXyWxO1cCGyEqYL9PXhAnCIjOxpUD8+/BvFMkM3aTnvZi82VG/m
	Neg7ezmQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZzk-0005zz-09; Thu, 26 Sep 2019 20:04:08 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZzZ-0005zf-VG
 for linux-nvme@lists.infradead.org; Thu, 26 Sep 2019 20:03:59 +0000
Received: by mail-ot1-f68.google.com with SMTP id y39so246938ota.7
 for <linux-nvme@lists.infradead.org>; Thu, 26 Sep 2019 13:03:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sOaP61NzCbjteLEjIgUHiaIabeRxs6SAIyG2Wbqa820=;
 b=uaRRXPFiLN84geyWrr6ODmiTM+MfvxYSM1HeFfjmAsngqa33z5G2k9H0553A01u673
 VbCnE9fF9W11KjzSYWi2VPOVX0x7UqErFJUPL4bXwhBmcNLc5brL4TaTLOOQC7P5IgHO
 KnqwAo2oxwG9P/rhzgX0PxnIfiiEDxEKYHXuqE4q35CK6xvVpnElGYBWO1PivBvsJWhL
 i0IlCcPIOm9IVPpY3FggWsPq9Jt5UAv/Pfu1gf/727M/HTCxR/y4B04ctVof000ZeAIy
 qTsnuI/DO+UoQ89MHlkcn6Ak6XU0oiHaCLaqhLMJR+EBOz6vMg0fK/w/SncbPlSMslVO
 VFtg==
X-Gm-Message-State: APjAAAXFFcTTL6vP6B/j24v9+yayoJoGKXfbaj5UFxlMsU0Jec3wl3Dc
 kNThwBiSvpJSX2vdAvHepzcZZi5S
X-Google-Smtp-Source: APXvYqwZa2jbjTt5msTlQwymnYNUsfqPZt4NTg1AcW/mpJPrGxm2SDZfK3qRDnrXBYRtotsEPzwwDQ==
X-Received: by 2002:a9d:5a06:: with SMTP id v6mr365418oth.250.1569528236556;
 Thu, 26 Sep 2019 13:03:56 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id g18sm105450otl.76.2019.09.26.13.03.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 13:03:55 -0700 (PDT)
Subject: Re: [PATCH rfc 2/2] nvmet-tcp: set SO_PRIORITY for network sockets
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <B33B37937B7F3D4CB878107E305D4916D36846@ORSMSX104.amr.corp.intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <63782282-026f-b12f-7a97-3e5d9643e262@grimberg.me>
Date: Thu, 26 Sep 2019 13:03:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <B33B37937B7F3D4CB878107E305D4916D36846@ORSMSX104.amr.corp.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_130358_061730_49C3FBFF 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +/* Define the socket priority to use for connections were it is desirable
> + * that the NIC consider performing optimized packet processing or filtering.
> + * A non-zero value being sufficient to indicate general consideration of any
> + * possible optimization.  Making it a module param allows for alternative
> + * values that may be unique for some NIC implementations.
> + */
> +static int nvmet_tcp_so_priority;
> +module_param(nvmet_tcp_so_priority, int, 0644);
> +MODULE_PARM_DESC(nvmet_tcp_so_priority, "nvmet tcp socket optimize priority");
> +

No need for nvmet_tcp prefix I assume.

Should it be a bool if a non-zero value is sufficient?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
