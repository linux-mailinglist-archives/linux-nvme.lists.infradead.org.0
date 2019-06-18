Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 378FB4A226
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 15:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxUky5+m/A5y5pm+sEQyBn+CogVNolQ44psZT6Pc6gQ=; b=UCLL9rY3zNH2f1
	4d+FyfnRFffJJsTtzSQGY8Op1dQgiLrSW6lKpf8FeLYhXPcjQAzTflQ6u5JAuzBqwfXEGWJVYp6nu
	ObUEqdJmMiXQgP8sJKvXO6JNdHNMIgGHxCOrfyejXaPkWK/+d2FSpdP5Ly6xmr5+gCyyFWrSYBNSi
	Kbw3+lTXoeqaRmZSs0VOFoHJZs7ykv3qiPD2SYcMoNogLQHyP1n/ptuJc4H1+PO+zR8nw7tUmamQH
	gaPlcjNVrYPJ9mtwE2Zdn6osz9VPFCk2LSnzYfy5J+MBoAs/NSqJ1KVNOkpTzb90NA6CUeUuCXR95
	jLaU852DP62fCq3l59BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEBu-0003QP-5w; Tue, 18 Jun 2019 13:30:26 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdE0p-0003EV-Ax
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 13:19:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id i2so5712779plt.1
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 06:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=frPkqK5kCI1XnEaOJ+gNA8ONJutQPz+wVq6WTnhwMv8=;
 b=MwxxC1Aei34Cyt/RQZWMjP+a4hNcl64B+WUfPUJH+bukkH+G4UWUE5+Dat7QBE+FHi
 kwOPH8bijP+7vCqoozK8KxIRc5ZAPHrTAolIn+NddL1OmmrUzbfUIb5IZd0XwQuusVpH
 SLkzArTcdoWTyP2tHqrUxQOLIANVq4ci7fUBVt4DCjgQ0Nwg/SDOxohCWUgNpnGi8QB/
 vwE8byzpuMJeo43H6vSLet8Zym3fn0uNLcjupCuVRJf+9/N7LVYjRYhADnqIONQ0/LHU
 hDpnKFEYwGRskf3Tth2u6xHq2hy8AAYl89RH4lIOXIfdQE9+OtnDs/iE6k7o4ibgv8cb
 Gmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=frPkqK5kCI1XnEaOJ+gNA8ONJutQPz+wVq6WTnhwMv8=;
 b=UZEtaOTfdAY5lEmToIBgr+FxnppIugrUhOWeatzAflctinEYrHumyh1CYwLYHt7wOQ
 XA3wlMg9abVcnxUsG68p77z+VHT6jRjCkUfd9/oCfDn3qU+GHPqj1AzNE0mYhl8TcUNf
 dL+inh8YbmGNBQHZKd5xd6WPg4bOmde9PSyC8azJAHHqeiAG85mp68vSUcnYKBHEvWbT
 UQEOmg3WIU8DyMjhSrXMlRUmHt4ABPmOIsJJG3CX5g1VZhYfxw9fspmxBTrQdHiiTd8/
 AcFHB7eVdMeeV3D58yufp87JVUhAkjnr+hdZ6AP0bCwNP2/+A/Yj+OiXv5a71M6htvyb
 oj6A==
X-Gm-Message-State: APjAAAW64fpbLtR/9jQF/0XER5fWTJJKYIfyLSYU4ZHULiRyMdf8pxiI
 NDw5iDNKfqH6rRqwV6vgUDM=
X-Google-Smtp-Source: APXvYqw8fKeZTvDIlKYXkdfuvQguQX28fZf2Wih+dmg/3F4bhG+gPQl4Td0q7H2vlj0KjFtJiznIgw==
X-Received: by 2002:a17:902:8bc1:: with SMTP id
 r1mr21851807plo.42.1560863938494; 
 Tue, 18 Jun 2019 06:18:58 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id j1sm16770659pfe.101.2019.06.18.06.18.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Jun 2019 06:18:57 -0700 (PDT)
Date: Tue, 18 Jun 2019 22:18:54 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Weiping Zhang <zhangweiping@didiglobal.com>
Subject: Re: [PATCH v2 4/4] nvme: add support weighted round robin queue
Message-ID: <20190618131854.GA419@minwooim-desktop>
References: <cover.1560679439.git.zhangweiping@didiglobal.com>
 <0b0fa12a337f97a8cc878b58673b3eb619539174.1560679439.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b0fa12a337f97a8cc878b58673b3eb619539174.1560679439.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_061859_475663_81682255 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: axboe@kernel.dk, bvanassche@acm.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, tj@kernel.org, cgroups@vger.kernel.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-16 18:15:56, Weiping Zhang wrote:
> Now nvme support five types hardware queue:
> poll:		if io was marked for poll
> wrr_low:	weighted round robin low
> wrr_medium:	weighted round robin medium
> wrr_high:	weighted round robin high
> read:		for read, if blkcg's wrr is none and is not poll
> defaut:		for write/flush, if blkcg's wrr is none and is not poll
> 
> for read, default and poll those submission queue's priority is medium by default;
> 
> Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>

Hello Weiping,

Please add linux-nvme mailing list for this patch to be reviewed from
the nvme people.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
