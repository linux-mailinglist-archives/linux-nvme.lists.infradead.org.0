Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7167FEA5
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 18:34:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vY6oL6u10plkOFa6lYpU+AUUByDOBSic9N9/M+Jv4jE=; b=CuOx6BDZg4ld4MPK2MXnT/+/b
	j6yqLoqSoD2bkqjLNmzfzT3AAS53Z/zomamt4WNEvNx/qMrfE2/jvk/diWEMz/p+GW/pERyCo9fDN
	T3Ot+dxrHNUZw3js0RBO5t8e1lA29VfYW0vHUawz01DXTT5vJkDNA3uhhnvCgl1UY/gxRgo8ybEjC
	oEp+XurUR18fith584Bho/M3J7KHQ+UDR236wd9NfQhBmq852MxLZClqF0rHrMcdSVDYiEjukLL96
	Sg5wIcrzXeBCSBiqcIixOGUTbEaxR/UADk7zDeSg57oWTgP5W9vIiNQ/p0vsDbdlXTC3FcUOU4Mdf
	IkbZYWwdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htaVh-0000ML-1a; Fri, 02 Aug 2019 16:34:29 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htaVb-0000Lv-EP
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 16:34:25 +0000
Received: by mail-oi1-f176.google.com with SMTP id a127so57220317oii.2
 for <linux-nvme@lists.infradead.org>; Fri, 02 Aug 2019 09:34:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nSPI8kF2RDQC/QpApdqp9RfeaaCV2CvX316i3ln7k6w=;
 b=tnMpH2wit9XieAIlNopcv5bPnCFapndomOO7gem/Pxah58wj3/m1BFxsFszXFWTgAw
 1pr17BQNmhKTeg7LfrQ5nQKay881+awhRJkHOJLHKdwh85xnlGk1zCFfaSkzli+yDi0u
 JTGaTwdud8JAm35AOxlzqsJQJQKgsWZecZ8/8TxrlFaOclYd0aFL/9hpmB7YEJ+ZESZv
 4jVSKhyGMhwSKUywxGwey92R1Yyux6ZTHEzPOqw0CNsel+bRnKUToZSLEYkHNNjmou4n
 Ub9TZXw6IUWo1ShqFro4nzTkGiw9NpNMQzRDoTgy7sJfNKGJWD7OAeFLK/wCLS/s/i9r
 HuiA==
X-Gm-Message-State: APjAAAXGwJm5//an8G8ofDHWXhPB3WbyjZ9fPfFvKEH5dvTFFkloZ1la
 UVOtw7d0Rp7UKjNm6aNYoCXbzDzg
X-Google-Smtp-Source: APXvYqztN6HRMVI0JKuSehe60Rl4Qm7PgNO3hU7/eAYMPya8zp8rrseLY1T1BVBekmvzkAYTEa4jBA==
X-Received: by 2002:aca:4950:: with SMTP id w77mr3430196oia.28.1564763662085; 
 Fri, 02 Aug 2019 09:34:22 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id l13sm27069541ota.17.2019.08.02.09.34.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 09:34:21 -0700 (PDT)
Subject: Re: [PATCH v3 00/10] nvme-cli: nvmf auto-connect scripts
To: Keith Busch <keith.busch@intel.com>, James Smart <jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
 <20190802155003.GB18214@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2b2cc452-269d-baa8-14bc-15989fec9fda@grimberg.me>
Date: Fri, 2 Aug 2019 09:34:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190802155003.GB18214@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_093423_486906_A0D80BEB 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.176 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks James..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
