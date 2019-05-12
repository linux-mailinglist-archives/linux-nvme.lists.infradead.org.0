Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC911ACB8
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lN0wluBsgP54Av5JRpP9583AuA5mXxrNQ+NhKpU2rtE=; b=FmgFr89ZsnIQwc6zBZ97hytWe
	KHhRjf2UCXNq7SxdyxZ69bILu3RRvcrND6Z0Y0tZLRPqeClzHd4kgMlz81v83u6CrjZ0Gc3mmUEa/
	BmN2Cdu5OawyII6eUHuuXYRhmoRVUBFV9i4CsSVDFkGIbe8RjsVbUsHUFWT73Bz9pHTovxXcDIAcF
	0Tf4UkAfl0u8yq8A0q+iXPFu7MNBxIeU6D0gA11P2qeMbj3zhARV0kOat3NAPBCiO094NeAhqYHgs
	3ICK2kDbKDXwQsg9J6nn88/tx8xPQ98pvs9/Ud+ZUFxx7ClThGRnFCIf8YduoZjOAH1gBPcas6TYd
	wg3DVxcsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPq5G-0006iN-DV; Sun, 12 May 2019 15:08:14 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPq5B-0006i0-4i
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:08:10 +0000
Received: by mail-wm1-f66.google.com with SMTP id i3so5659753wml.4
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:08:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vTNLozDd6mMUlOL1WRoDjzyIK5trCI7Hky/bKOSF1e0=;
 b=QW7pDUF9L/nHuBOSBOUwLsPxzN5y2pewQOQ9rAJex0tCA59wUV2CTl2Z4SV5UiQTZl
 K8wx6v4Hz5Nm3HioHVUHTDYWng1mdZ5Bi+RY/bimf3lH43/YoxndIUC8IoF8umQ/xHNt
 iFZnUUOyzAb6fd3kOYO2PAiYcE9mqPI9VJICTezd1+ayZtsZipjTlSTON5iivpkx6dCH
 9DEQ7pTKShd6+zZz4FCd1mm+CUF8ZDpbpKJ9SSCAIpzs+9VAs742+ONcAyVbbicvly7E
 55ERl3PyMshJ4tEqCwRYCt1p5c44ycSiDpBRRi8F/ziGw1HqILd7j4QrLDr3W0uaOQsN
 N5pQ==
X-Gm-Message-State: APjAAAVKmeQXrbZzaGhQZHPSSRYiaDs86ln6LvWsWl9sF0uAFuQx6Jv/
 1Em6O9mHuhc7TuxIuZOfHGOmWhB+
X-Google-Smtp-Source: APXvYqxmDYvXjKZvuXGGkyRZjBfATu44lXrpBMAC02tCUC+q5TNEp/ivu7tOTjVj7Wd436dlmLUbWQ==
X-Received: by 2002:a1c:2dcd:: with SMTP id t196mr339414wmt.141.1557673687453; 
 Sun, 12 May 2019 08:08:07 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id h188sm16583430wmf.48.2019.05.12.08.08.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 08:08:06 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc 3/5] fabrics: allow discover to address
 discovery controller by persistent name
To: Hannes Reinecke <hare@suse.de>, James Smart <james.smart@broadcom.com>,
 James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-4-jsmart2021@gmail.com>
 <28e1e9a8-671d-e3ff-6111-7561e0f56fa9@suse.de>
 <1154a16f-222e-7a28-96c0-3a22052e2bef@broadcom.com>
 <f51f039e-24f2-d01f-2ae1-9f86c99e00e2@suse.de>
 <3f84d637-4d04-45e1-ce49-59238c2aaea8@broadcom.com>
 <c3bf6edd-91fc-74d5-29a3-093fa57d561f@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <689b9665-5f93-1ccc-3e6b-41436b769b09@grimberg.me>
Date: Sun, 12 May 2019 08:08:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c3bf6edd-91fc-74d5-29a3-093fa57d561f@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_080809_183610_804ADA86 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> You're talking about discovery referrals, right?
> In this case I'd go with case a), and simply create non-persistent 
> connection.
> Reasoning is that if the admin wants to have a persistent discovery he 
> should be ensuring that this secondary controller is found during inital 
> discovery (ie with the abovementioned systemd boot service).
> 
> (And discovery referrals are tricky anyway; I've created two discovery 
> controllers each having a reference to the other nice in order to have a 
> failover scenario, but ended up with a looping nvme connect-all ... need 
> to send a patch for that.)

Hmm...

I see two options here:
1. create new transient discovery controller for each referral as we do
today.
2. make --persistent follow referrals such that we have persistent
device for each and then we skip referrals as we will expect events
coming from them...

I would suggest (1) as its simpler.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
