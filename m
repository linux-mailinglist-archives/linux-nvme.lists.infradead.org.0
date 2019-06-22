Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDE44F2C7
	for <lists+linux-nvme@lfdr.de>; Sat, 22 Jun 2019 02:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFnSoC14DLLvqepwA50LKvoHGvfWVR5Fx3VIi2KCLQU=; b=JzUBlRoujEwE49
	NBKWhQA1dtgOJb4Ww2QMq81U4iZmOPrLKaTYOAs58fp+Ed645M5TNA99C6hH8m2P5g95Yw/ZkHRFt
	RgCsfZhaVIiPQtxrZZYCFz8VtdnY0x9RA37t4XWHo4nZlj66rljGOdpEYQ8k9HYABpbW/Nyfnc3/h
	gjrzxMu62Y50rXF4aYWL5ja8zZo2xlZaibZ3EGBev0y3oUVAdVoAZ1kmtwaHeKFCutEdbcyqj6TnR
	PPbfCOQkx+SNWJRddrIR7z+q0rqN4cAym65iTnYFk/v7q0v04UAX2OoUXV85AyBNwoevGG1yh6lpq
	L3bAONoWW4YX+3nqOP7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heTze-0002oU-9p; Sat, 22 Jun 2019 00:34:58 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heTzY-0002o2-RW
 for linux-nvme@lists.infradead.org; Sat, 22 Jun 2019 00:34:54 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 145so4121636pgh.4
 for <linux-nvme@lists.infradead.org>; Fri, 21 Jun 2019 17:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DbzYyUDp1dRjn3H+usjWi3D9EIfYCLIg8vMo1iKLxOE=;
 b=Ie7sUVEaK5OSyRscP5dvXhmCFMg80uC1Rr+Gy6wh4iz+bfWGNOHmyvtamVcFm9iPew
 CbA0qcqSFsfAbs14QFwNYkh0tvGd2JqSxMCU1yuAGZS0tLDWqJoXHQo7aOvMkO4Z7Ph+
 u+xZ5UFowwSbqbKAen32rpUlQyJrO+jZknTOB8wEwMBBdImpbeDdYCpDCE8jdg9TBbrN
 eU4TXWHHw/qGpSqZ7NM+ATKB4wEU6GmUfoGq3Zq9Rl2c9tmL/Z1sSpYkiN6UoBpwdgqm
 wW0E2KLGweWbvWoku8ucbItmwAmgQ51SiX0KyS+kROiql3ShLv0XpSzMjH7fJ+5yfIrd
 iQnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DbzYyUDp1dRjn3H+usjWi3D9EIfYCLIg8vMo1iKLxOE=;
 b=GGDBON8k6eKMLeh2BiLFQE7wPBpK4W/Z1RR7aBjVupMMSmZbLt7lHa7WHF3tix7E9Q
 I9XoGYpgYZN1guS0gKaih4AThBGpSE275pShgJzxnr6OPk2vhUjpxp+P5PV1Yv6gGvID
 0wkfuDxeZl+1B429M7Lst4sEUzi4DnKXA3ciFqFH2ul2fCpY8tOlWTSEyvAcu6Y5DMzb
 S84yCIvgpMulX8opTdFF70JinSgFk1SCu2UkIiP5k3mT+65XrOsgVDmbMcatTc6UCJEB
 ocYNVP7FIWlGeL4vngRcx5H7tnPRiNSXhHCRP0Wr8fueniNSBCEvexRIKJcpdWkTf0a7
 L9kw==
X-Gm-Message-State: APjAAAWoT8Bv/GJI9DytRSJvWPZvqSo7Xm3fjtM63tMUBwCE6E7gRquU
 zCxd2OmJg7hKsq6FGU5Qf9A=
X-Google-Smtp-Source: APXvYqytxwUx0Tpur+7GnC2a3P+s+b+qdLObq2Xpr15NA8L/4qKDggPrC2Rid4tOj6BLU0hnPYkhVQ==
X-Received: by 2002:a17:90a:be08:: with SMTP id
 a8mr9562679pjs.69.1561163690582; 
 Fri, 21 Jun 2019 17:34:50 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k184sm3506693pgk.7.2019.06.21.17.34.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Jun 2019 17:34:49 -0700 (PDT)
Date: Sat, 22 Jun 2019 09:34:47 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH][Repost] nvme-fcloop: Resolve warnings on RCU usage and
 sleep warnings
Message-ID: <20190622003447.GB3139@minwooim-desktop>
References: <20190620201701.16833-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620201701.16833-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_173452_892635_5A3F4988 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

It looks good to me:

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
