Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B702D64FAD
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 02:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1m6Mx694I0tynX0BVJcboeExZbwzXw5gMBZGup61g4Q=; b=on1TYvmvl/CZvFHBldwlgyUGp
	lZJnC+4b65Rj4RfM+dZ1umIX+PSoMvmWxa0NRzerH0JyZO56ZJoUanCBccUi4UiKYkpTatAS5zQBP
	ldyhURSkUH/EVR60mN8H9o1DhqI+u5ebIP1kbefmFvcEwHZgNAUC3Op8Djl79buuuRKBqWdnQ+w8r
	mkV2AYdqlqLOnaWKRLIi9DUf86cXskkmp9x1VkR3IQH8600oneC27lOJiwdUhDmifSF/9I5tnkEYp
	8HmKjYomv/pGse3cwHJfKlxXNXnT56tvlIvuZfOYawBlf2ZffNhPmYnQq0xbbGkfuPt4st2v92zGQ
	iJJe+/uLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlNAa-0004MD-Lc; Thu, 11 Jul 2019 00:42:44 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlNAO-0004BL-Qb
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 00:42:34 +0000
Received: by mail-ot1-f65.google.com with SMTP id b7so4057042otl.11
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jul 2019 17:42:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2jsd34ZOAIxrTkOsSLxbdhB/UkeFRj59VZPJ6mTmm0A=;
 b=rXtCGxi5s1y2CwNmlE76EUoxf8VwCyhRCJOCPvbtEMYqjd7yXYp+7wGJsmGqPYiSxp
 PR7zKHV4Kf/0SJOWib3atio1MYiCcL1gDmnuaP2/EvjnN0JE+EGDJ9bkvoPjKMUzm4Sl
 gAXcDCZPnn7Y/Xu6tuz0kk7nzoN2Oo1vuXQJWuzZn4ofLIzkOSU5gnIm1wvuMLjwflbT
 okbwMfwX3ZdiKtJJbpSYQIUopeO/tfKibpXeQlPWnTdQLiTwod8gG1bo3NSEexKueJM4
 llici4/cDqfG2OfjloQLHPuvySqPSStk4fHQMYzp2mpOaa4CfSWhmgj5iAQAHRhmDYDk
 ce5w==
X-Gm-Message-State: APjAAAUVV5FaiUqs3gnPllU7adrTFGk1PN6lbcEVHEXHq27tvzkjasgq
 b7TSvLQtXMbONMCzuReFhdU0UkCV
X-Google-Smtp-Source: APXvYqx90wgJylY4pA0pUN8ENHBoRjzNlBkGupzowB8Q66HV4zvPONG0zmxI1vrTFyoe7u3kyxd3+g==
X-Received: by 2002:a05:6830:6:: with SMTP id c6mr1103200otp.14.1562805747844; 
 Wed, 10 Jul 2019 17:42:27 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id f84sm1366618oig.43.2019.07.10.17.42.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 17:42:26 -0700 (PDT)
Subject: Re: [PATCH rfc 6/6] nvme-cli: nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-7-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d9197c71-2386-ba52-088e-183dad4a662a@grimberg.me>
Date: Wed, 10 Jul 2019 17:42:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710232740.26734-7-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_174232_866484_FCA67B7E 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +	$(INSTALL) -d $(DESTDIR)$(DRACUTDIR)/dracut.conf.d
> +	$(INSTALL) -m 644 ./nvmf-autoconnect/*.conf $(DESTDIR)$(DRACUTDIR)/dracut.conf.d

Where is this file?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
