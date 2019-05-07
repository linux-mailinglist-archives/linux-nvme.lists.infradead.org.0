Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB25161DC
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 12:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jsOkBkZs7Ru1S2I6os/fay9PKAaN7HxKHaCSw20MX/g=; b=AMvt6KbfGwgaNl71TzdEG4pdx
	0KNcAHgHe7FJDnzKKoxpIlNi1lu+x323unga5IxTIe+YYlvBdZDb0H2N33ekulczG0kNSGu3Vqz6X
	PHhconneB9rQHc0FY5TopDIYgdsDvHSVbek/8VLdqcHHH8xWJ2Qfo07lDUnfekPs7/CfyA5KRy1gg
	r4Vr0MI3UXX3XNWS6a3N4vXXzZacJ0l+O80J3qFhrO7i3nURtudAZiqN3WONEAbXlX3neWNcIEz01
	wqXgZwzpxIGSAjUuEpKw74d5FzZVgS3rjO4wdD0lgbKzdqvskxcusGRsq7KjCXHd1iII8OGdWH0ga
	w9c5ekWaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxFf-0000op-1Z; Tue, 07 May 2019 10:23:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxFZ-0000o2-Ob
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 10:23:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id 13so8115196pfw.9
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 03:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sr8Pz03FlEmfvEi/csUsOrKUnpi3Nc1BLYoKmGePRQM=;
 b=K/JigDTOgHv5pDz57smlET+A3p50bnG59DEBHDpEHK9VOs0eNt+nvvkdIvOecZ6gXa
 0sJphsF16IXtn+Edi+dxIIRbVhojafQhkNi8YG49cgRJsLduQyIUJyyy6YOjX3YcXUtF
 Li6RbPxv0mQDMG3cbL8udc2QIdrutxBWmv/0+6q9QqySZED/4BRAwcp7XKsyBunKJjZi
 Fs5L+Jj+ppsnaHvrYs0NyL4T8ke0+svcfb0YzHdFLBiYugMVhqoQZfgZ4DY2DOeVp/cJ
 nFDg5ioFQIrRNF9ELlrTPikAnR1nUgizcBE9EOe3pLGJRxy998F07S9e2clj4E3WJyzw
 IaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sr8Pz03FlEmfvEi/csUsOrKUnpi3Nc1BLYoKmGePRQM=;
 b=ehm5r0BkpLLWsivADMDMbm8Pxjrk7IIDl0tRpS5K9qpDnnbsz+aqjHBcJINWoYNQV8
 9qVF/+7priWS6oxK7PhMBu/L/8CCXykUN45kEEnWbSod9+TpPzB7clrqDocLz4PYtDXb
 wPEbuHXQTuNkljo9EqivEvVcMszGWRimZSgGggqyEgwGBXs0HwdFabeLAalVx68BgYxx
 0E2vpL2AYwk05qRK8csBkT26O1g/Wn3JtF8SCZu9WpHp5+kCB1YizQ+Zsh2LpFGh5aya
 hxN33OL0hROR4xJ+ne39S2vz5JRgSo73kBJfMiJOn2ygzf7MS3FGT1z1AjUvygUZkcDO
 G1zQ==
X-Gm-Message-State: APjAAAWBfXOmXWhoYY3WxVIaRE+6bXtlD8Hh75lt0ihaFLlLrMVjCP31
 SV1BlaWQV08R1PgYCSFSBXjpeqebMjw=
X-Google-Smtp-Source: APXvYqx+MgsFKuY6OrZ0SX15hfRQNeGA4XSvHi/LQExTr7sYlDP1dZwnLzwQnpIth3DJPk5nkRwdIw==
X-Received: by 2002:a62:69c2:: with SMTP id
 e185mr40105392pfc.119.1557224584744; 
 Tue, 07 May 2019 03:23:04 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i129sm16548715pfc.163.2019.05.07.03.23.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 03:23:03 -0700 (PDT)
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
To: Johannes Thumshirn <jthumshirn@suse.de>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com> <20190507062034.GA3748@x250>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <e118dbb7-51a5-d013-8c85-391452846411@gmail.com>
Date: Tue, 7 May 2019 19:23:00 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190507062034.GA3748@x250>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_032305_803306_CD601FB3 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/7/19 3:20 PM, Johannes Thumshirn wrote:
> On Tue, May 07, 2019 at 01:54:09AM +0900, Minwoo Im wrote:
>> If Johannes who wrote these tests agrees to not check output result from
>> nvme-cli, I'll get rid of them.
> 
> Yes agreed. In the beginning I though of validating the nvme-cli output but
> this would grow more and more filters, which makes it impractical.
> 

Cool, then I think I can update the pass condition of this testcase in 
other way.  Once Chaitanya gives his comment on this, I'll prepare it.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
