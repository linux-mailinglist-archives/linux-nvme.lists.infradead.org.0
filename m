Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EF6F1B84
	for <lists+linux-nvme@lfdr.de>; Wed,  6 Nov 2019 17:44:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LYIIwZ4gdnySXMukRunmgWygtQ7Ry+rgjMSYnqRSpnA=; b=mdUftAGt3WPEd264R+cky8Grj
	mw7LthSJNyN+jokEWzvqsixOiA0CCeIa/v2muwonhpaVeplmSZwdOia6UMHQ6QtGA5zpi80C+3E9T
	JFNfdDn3C/cWsYcm8BhodPsZfbPvMMNdw7gW7+NxJj20ImbsyCtEKCXaID5gYLIo0BSMZUruL87xd
	PsDqwVKwZuF0F2xUP5HAzBfq0ilLsfFsQILDYDpwn5/TpS6VapH5aFBRQ9O639hwHNMrd+3WFZ+dH
	cEyhdRI89VWHLGTrtamFK8APRNBbiCEu5WrvC8hFUvetXM3ncP2QhkSzMfWQ6+MXphTJnkGmTvnkU
	P40sdkx8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSOQM-00045f-Uj; Wed, 06 Nov 2019 16:44:50 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSOQH-00044k-Qj
 for linux-nvme@lists.infradead.org; Wed, 06 Nov 2019 16:44:47 +0000
Received: by mail-wr1-f67.google.com with SMTP id p4so26663773wrm.8
 for <linux-nvme@lists.infradead.org>; Wed, 06 Nov 2019 08:44:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2DI22SJ3kE91A91pdIinSAHGKuJcezpq+dRKh7CI9CM=;
 b=E2/ISPGdM83aJbvsEao4SYJTgfRsl7D+qgBHz2gFQXYuYVMKPf0dibX+V2HAW5BgOq
 J0riya5IYS+jbd/D7AV+dusCna/8n1vSMVnv7D7BXDSJRifABJZjQO5q2tZuGsVnozBd
 3W9SValPQWq0M7qMg7RPWH1lvr43562ZuQAMvmcqhXIqgBuK0rVThStHE3MFIYtw3c6q
 IBNj0KaQnWPeC9j/kQUg+2gyUERddwpiF2gOO1lfsuJkha5SrHM2YE7Bl06FftIJ8XUL
 36FSWSpQVjLv8U9GF6rLXKOAuOjCyuXRoWpK53K2+lX+gvQfTh2f0iCGdK78+XUKwGEv
 s/JQ==
X-Gm-Message-State: APjAAAWXq/sXDv7rYvS7CcD6Yrn5OqQXWNGDIcTZJ5H+nyAvzHqpNRT3
 zeM7mAvJD/wYWm8cCEX5IUj8VAjDzDg=
X-Google-Smtp-Source: APXvYqytwALnSyHl2NcgoPHwK96PRFOmDX6AEom9ljv+up/12JwKw1WgZ4qbcahAmP1M0qOKjiOIHA==
X-Received: by 2002:adf:df0b:: with SMTP id y11mr3482028wrl.282.1573058679567; 
 Wed, 06 Nov 2019 08:44:39 -0800 (PST)
Received: from [10.30.10.132] (149.red-80-28-245.staticip.rima-tde.net.
 [80.28.245.149])
 by smtp.gmail.com with ESMTPSA id u26sm518758wmj.9.2019.11.06.08.44.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 08:44:38 -0800 (PST)
Subject: Re: [PATCH 0/2] allow for busy poll improvements
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <B33B37937B7F3D4CB878107E305D4916D4AFB9@ORSMSX104.amr.corp.intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5f3d0fb2-7a9b-4655-1052-60ba66499746@grimberg.me>
Date: Wed, 6 Nov 2019 08:44:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <B33B37937B7F3D4CB878107E305D4916D4AFB9@ORSMSX104.amr.corp.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_084445_865609_86F66B6B 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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


> Proposing a small series of two patches that provide for improved packet processing for a fabric network interface that is operating with poll mode enabled

Mark,

Can we start with a series for the SO_PRIORITY for the host and the
target first? IIRC you mentioned that enabling this alone will
produce an improvement and the change is completely harmless.

Then we can add the polling change in an incremental series on that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
