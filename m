Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD9C14E5A9
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Jan 2020 23:51:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	From:Subject:Reply-To:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JIXHxSlmpawkQcp7K3m2qpPrwmeeGUpokAkejCinBiU=; b=SzH4yJBtZtwBv4Tk2pRyFhZp2
	aMq8HwgdJSUGLJhvCs8AHRerkYgAnv5ZBDiHjN/3GOajbh8tOe2lB26Iw0ZaOEtzScgoKy7bQmwjX
	O8Wo/mg9tdFzyr4Hs0bCl35ifrjmRMJLzqesVhFPclqlQ9y2zpxsqMh4aesP1Ev2zKNFJjXRoTa4q
	PQo8HdhxEumXpDIt589Ytfgr8GQNsCIQ8Q5PcgupfVcKNUapMztzBXmHTwzlPAM254BRSBtfL1w7Q
	0L1WBovUTUyNKlgAXFSNIUwFj0EMxK4rULwFJLH8bqhKOo/DTvwC5S6TRmb0RcODITwRt0kfZfiPV
	T8vPJHFyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIej-0000Aj-7Y; Thu, 30 Jan 2020 22:51:25 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIee-0000AI-4u
 for linux-nvme@lists.infradead.org; Thu, 30 Jan 2020 22:51:21 +0000
Received: by mail-wr1-f65.google.com with SMTP id m16so6184136wrx.11
 for <linux-nvme@lists.infradead.org>; Thu, 30 Jan 2020 14:51:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:references:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6Kw6Kifu2FwqPjEnk51SW0O79d7dN1mmNGOzNItUwQ8=;
 b=UgmOD6ww0+9DJcND05LgaA9gJEm/UNrU9sa/ppel/7ISBVLETr4PqcOxiV3F3oGKyO
 HBjZGxwIxWSZvj+tSC5ROqZ7QBI2I3W4eVogB0DpISOdEWKsgl6F8lQ5Yj3DLooeJKn+
 9PCtIfDFILHCdXS6B6NRfR5gcFjoltkPx2jnvuxVif0ZbHoPNWlez+5aWZtamoQhN8qs
 0YFMzhMG+1fBWS033jmlhhaqsTdB3P6AtulX/NzT4gtoaXunVp+UoG9nSX9eCCPNVLkR
 Y7xO7FliPjOglvaf+dRNuxnVx6YiKDcbpnnu7rrpwCzcNsIPB97eKN4yzjmG2iRDSc2K
 KaZQ==
X-Gm-Message-State: APjAAAVuWblvGmB2A5drCN4hUE95A1/uquuGtJ75upZ5Kq/BKTDZ0uaq
 lVv2jSEwPwr99gpSiCkGB0s=
X-Google-Smtp-Source: APXvYqwI1bTxu9HMbapD91tAUcIGrAD2t1c9BPm6m59Q28/p+WBapLuc2MJsD0CUTDsoqBxOJb5xRg==
X-Received: by 2002:adf:ebc6:: with SMTP id v6mr7823640wrn.75.1580424676467;
 Thu, 30 Jan 2020 14:51:16 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 21sm7994235wmo.8.2020.01.30.14.51.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jan 2020 14:51:15 -0800 (PST)
Subject: Re: [PATCH 0/2] nvme-tcp: Set SO_PRIORITY for all sockets
From: Sagi Grimberg <sagi@grimberg.me>
References: <BYAPR11MB2712E7D933721CA54EB18365E5360@BYAPR11MB2712.namprd11.prod.outlook.com>
 <675e24bb-8a91-6612-887a-2a0a38a57cda@grimberg.me>
Message-ID: <a82b08e9-75bd-e14b-7d30-7414df1c90c4@grimberg.me>
Date: Thu, 30 Jan 2020 14:51:13 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <675e24bb-8a91-6612-887a-2a0a38a57cda@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_145120_186569_803B316B 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.1 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: Keith Busch <kbusch@kernel.org>, "Wunderlich,
 Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Keith,

Unless there is any other feedback, I suggest we queue it for
5.6 perhaps?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
