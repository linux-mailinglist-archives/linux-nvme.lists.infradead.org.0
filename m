Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD55CC753
	for <lists+linux-nvme@lfdr.de>; Sat,  5 Oct 2019 04:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKUo/SULcvDFkQx4lGZ/6OdyD6xvCCshdOk4H7UyqD8=; b=ulTESUEkkk9pge
	aagaZdwSOWLgVfxRxR3UHrXdZNN0eLhKpTkfj5Cb00am3loL4SC4IZCPMdQJCW1zvKLWbjumjdqek
	bbcWPybvQe/mnuLrz3dqdabn9bmwTIPpDPBuvfRaPiZsMPzpvLsu6Eh953xnIj/NZRqF+LrygjbCh
	Bv2ISPWWLTJZH7g8wLij5rZc7XoFDgh32DCrJg8875o6BH6HwfsHu1USTSlJb46HkadS68rL6uwjU
	DKXbmEK7KuQN362z78oZPbVREprjJWd1hub8r/gEkXGe4Q1AaYdvG2V8lAxQWBcp8yHN7A20iOJsB
	NvNZ0qCdgeAv7fgZbCLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGZVW-0008LE-4L; Sat, 05 Oct 2019 02:09:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGZVS-0008Ki-Cz
 for linux-nvme@lists.infradead.org; Sat, 05 Oct 2019 02:09:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id x127so4953331pfb.7
 for <linux-nvme@lists.infradead.org>; Fri, 04 Oct 2019 19:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:date:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0HrliNBhk4PZNhcOI0ItOvPv1qVaL7r64C+KibeeZiI=;
 b=Qw3pxU/EOHQtl7de7DdDjSaJNMTnqdt6yNPMJHYGI4QELMmgMVbaGFzwrhRRaeG7pM
 k7sVtWBSNACnJSbOQe1YJirKkzH233Y8FgmmeM/B+gygH+mEWUFsWhvix7h5G13YAvCC
 vYiUAPfrfw+y3BeWk8qA8n1ipZQSNErQMAogxc97nIb6WOyAHsUYUiDPEe5ZIjvJjwvI
 eAZV+4pXpzo/uakDXYz/kgmO4rZS8Ot5KIl7udU1yKgBy8YmL+LdvToHa3iTaYAXbDWl
 DkcQINidgHm/qn+jxSjkNJd/nNfrcd6T8ASCkjMcUU+yyO7o+kS1LLy3H9vQbzl4tFQP
 RqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0HrliNBhk4PZNhcOI0ItOvPv1qVaL7r64C+KibeeZiI=;
 b=iHcJiHAzeFE3pKtN2zrGNH1gv6zcD73TKhWiXmPt8Cj8aSXq+TYb5JxTkBBX3iT7VO
 CoW3+hsgpCnAwrvgj2DU3J2wyqANmSnO32se+yPTc+NuvYNxXwrGNqnZD93UA66Q43dt
 S5BzBFUw7uQMDFR43B8CLcRItnRDaTzZJw9hVq19CB4yamKdsgslEUxtF2j7SNS30Dw/
 520OrJdRHS4SY9O2H+kaI9pE9QKPjCwdLkBWTWdwwa/9WAUUYos3sdcHVsoH5hDOxlyj
 8IS4Fu6+3AlTv+PoDxOuk9V9QWlnEa4G+eIvMlwILw3evYoFhB+kxjz68GnQ7+MYtF/1
 h+Yw==
X-Gm-Message-State: APjAAAVVB5Vdd9CREpPXlDDz+bhSRJ/rHXr1LLFwBYAzp7HdSYqx37Yn
 woD82n68apWXhG01+1yTnlE=
X-Google-Smtp-Source: APXvYqyrqE1POeycuhBpeQm8rkP0LlYc56z4N7zZOfqZoq8s0IYFRW1bJ8V+kVXF33quarx/r8tBmg==
X-Received: by 2002:a63:154d:: with SMTP id 13mr18943625pgv.163.1570241349801; 
 Fri, 04 Oct 2019 19:09:09 -0700 (PDT)
Received: from freeip.amazon.com ([204.246.162.45])
 by smtp.googlemail.com with ESMTPSA id ep10sm20191623pjb.2.2019.10.04.19.09.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 04 Oct 2019 19:09:07 -0700 (PDT)
Message-ID: <d31f20ae63a5f40c04ac4860f5ebc8ac3d159f8a.camel@gmail.com>
Subject: Re: [PATCH] nvme: define struct for __nvme_submit_sync_cmd()
From: Balbir Singh <bsingharora@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>, Chaitanya Kulkarni
 <chaitanya.kulkarni@wdc.com>, linux-nvme@lists.infradead.org
Date: Fri, 04 Oct 2019 19:09:06 -0700
In-Reply-To: <0adce3dc-63ad-5302-4486-d6d840b42ee0@grimberg.me>
References: <20191001231346.18518-1-chaitanya.kulkarni@wdc.com>
 <0adce3dc-63ad-5302-4486-d6d840b42ee0@grimberg.me>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_190914_442305_D5EFFC51 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bsingharora[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 2019-10-04 at 17:09 -0700, Sagi Grimberg wrote:
> > Over the period of time __nvme_submit_sync_cmd() function has grown to
> > accept large number of paratements. The function __nvme_submit_sync_cmd()
> > now takes 10 parameters. This patch consolidates all the parameters into
> > one defined structure.
> > 
> > This makes calls to the same function easy to read and improves overall
> > code readability.
> 
> Personally I'm not a big fan... But I'm not going to reject it either...
> 
> What do others think?
> 
> [...]
> 

The patch itself is not the cleanest, smaller well defined refactoring would
be much better - at first glance

Balbir Singh.

> > @@ -366,10 +398,25 @@ static void nvmf_log_connect_error(struct nvme_ctrl
> > *ctrl,
> >    */
> >   int nvmf_connect_admin_queue(struct nvme_ctrl *ctrl)
> >   {
> > +	struct nvmf_connect_data *data = kzalloc(sizeof(*data), GFP_KERNEL);
> 
> Please don't. I'm allergic to allocation on declaration.
> Just set d.buffer after the initializer.
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
