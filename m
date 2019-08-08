Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B8586E94
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r8WoMa+mmEy8RyaJjZVVoxEtdJwAfFSk/CXhAduIPC4=; b=UCoERIL3wkKNrFki5fI7jJJU4
	xvZTdy3NEVcc0DDXscqPyNbifXhWkprbvXkcmlEhcqdy3jXaOijb8Vkhm7lpfIbOhE3DqPOgiJd7M
	HvG+WuA5E26GxjLhvKdXsfPS/WgmW80JMK/QCM1sbBz+VLQJFU5spPuIMR1WOg5/NQQNSiow//s+B
	REpo91ONaYY5FxUb9I6wyloH9qZyTliMc/LC+ufTWEqDUp2RMxsxNzbbpPURgMfyUXDf4nTcvPzOT
	boUu6L6O1aNftJFf57jFhxQgPAHW42CQ/dyfBJr737U1vO/WwrLFIutFnE6u66aS9w9uTjLxVCyq7
	khexzUJOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvsDy-0002Fm-UT; Thu, 08 Aug 2019 23:53:38 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvsDu-0002FV-4y
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 23:53:34 +0000
Received: by mail-ot1-f66.google.com with SMTP id z17so7372723otk.13
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 16:53:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Qk1YdlAJKiOvd+upkVhC9LXwiyaKvPydLRSQTDRBnkw=;
 b=VKD6w7NYVwH//dvIgPRQ9CTVse0MhG8UyMHizDZPre2ywPWM85TBbbGue/JpNzSTxc
 H0Iqit2tXpiuiXQJP8j2Mj2uojzpVSQZ27JEW5Y4mo31BqjceptM+5SKQs3rX7UufgbV
 cacSx+IoDHgJ3svRHPqtSUoeTUYs7z1xu0bW0zgZPEf9kBV/HCHYfPYhEszIHGDBko7E
 KjvPXz9i67X3Zv9WtTOM0C2ybuaycsORAUktqLKtYRqOQkm0BpxZ47rGMFrkKdzIDtWz
 hYQQ0SZEDEb9275L+Ziu31rF8tEdx7rA/EnT6nFEtWNmV9SiP2BKQCuc7vGMlpHBq+Ff
 0jpg==
X-Gm-Message-State: APjAAAXhd1NZJ/hDm1RdD0ICp35sgRWSATqSQvygloP1TXo9Fz0uZ/60
 MeyjC7twrzYsocfijk2f4Wk=
X-Google-Smtp-Source: APXvYqx67oikIuAw0Rkex798nbWIzrwOD8ctSazY7vhBy6QQMn6stoYNWg0kPNqIULgUk+Yq9wgX1w==
X-Received: by 2002:aca:aad3:: with SMTP id t202mr4791938oie.158.1565308413185; 
 Thu, 08 Aug 2019 16:53:33 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id x5sm32914943otb.6.2019.08.08.16.53.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 16:53:32 -0700 (PDT)
Subject: Re: [PATCH] nvmet: fix data units read and written counters in SMART
 log
To: Tom Wu <tomwu@mellanox.com>, Linux-nvme <linux-nvme@lists.infradead.org>, 
 keith.busch@intel.com, hch@lst.de
References: <1565230956-28982-1-git-send-email-tomwu@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3064bff9-5063-9c09-9fe6-277e64580e23@grimberg.me>
Date: Thu, 8 Aug 2019 16:53:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565230956-28982-1-git-send-email-tomwu@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_165334_195636_727965E5 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, pulled to nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
